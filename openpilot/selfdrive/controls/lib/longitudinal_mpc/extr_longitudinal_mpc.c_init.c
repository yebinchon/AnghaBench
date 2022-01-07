
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* x; double* u; double* y; double* yN; double* x0; double* W; double* WN; } ;


 int N ;
 int NU ;
 int NX ;
 int NY ;
 int NYN ;
 TYPE_1__ acadoVariables ;
 int acado_initializeSolver () ;

void init(double ttcCost, double distanceCost, double accelerationCost, double jerkCost){
  acado_initializeSolver();
  int i;
  const int STEP_MULTIPLIER = 3;


  for (i = 0; i < NX * (N + 1); ++i) acadoVariables.x[ i ] = 0.0;
  for (i = 0; i < NU * N; ++i) acadoVariables.u[ i ] = 0.0;


  for (i = 0; i < NY * N; ++i) acadoVariables.y[ i ] = 0.0;
  for (i = 0; i < NYN; ++i) acadoVariables.yN[ i ] = 0.0;


  for (i = 0; i < NX; ++i) acadoVariables.x0[ i ] = 0.0;


  for (i = 0; i < N; i++) {
    int f = 1;
    if (i > 4){
      f = STEP_MULTIPLIER;
    }

    acadoVariables.W[NY*NY*i + (NY+1)*0] = ttcCost * f;
    acadoVariables.W[NY*NY*i + (NY+1)*1] = distanceCost * f;
    acadoVariables.W[NY*NY*i + (NY+1)*2] = accelerationCost * f;
    acadoVariables.W[NY*NY*i + (NY+1)*3] = jerkCost * f;
  }
  acadoVariables.WN[(NYN+1)*0] = ttcCost * STEP_MULTIPLIER;
  acadoVariables.WN[(NYN+1)*1] = distanceCost * STEP_MULTIPLIER;
  acadoVariables.WN[(NYN+1)*2] = accelerationCost * STEP_MULTIPLIER;

}
