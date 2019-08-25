clear all; close all; clc;


N = 50;                 % number of smaller objects


%----- Input parameters ------

M = 6e24;               % mass of main centre object
XY = [0 0 0];           % coordinates of centre object
R0 = 6.4e6;             % radius of centre object

M2 = (rand(N,1)*3 + 5)*1e18;    % N x 1 vector of masses of all smaller objects
xy_all = (2*((rand(N,3)-0.5)<0)-1) .* ([1 1 1] + (0.15*(rand(N,3)-0.5))) * 0.6e7;   % N x 3 array containing starting coordinates (x,y,z) of smaller objects
v_all = (2*((rand(N,3)-0.5)<0)-1) .* ([8 8 8] + 2*(rand(N,3)-0.5)) *0.5e3;      % N x 3 array containing initial velocities (vx, vy, vz) of smaller objects

dt = 100;               % integration time interval for computations (smaller values give more accurate results, but make computations slower)


% initial velocity of centre large object is considered to be zero
% all values are in SI units

%-----------------------------


gravity_sim(M, XY, R0, M2, xy_all, v_all, dt);
