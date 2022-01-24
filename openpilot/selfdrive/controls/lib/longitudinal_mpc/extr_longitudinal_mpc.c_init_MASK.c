#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double* x; double* u; double* y; double* yN; double* x0; double* W; double* WN; } ;

/* Variables and functions */
 int N ; 
 int NU ; 
 int NX ; 
 int NY ; 
 int NYN ; 
 TYPE_1__ acadoVariables ; 
 int /*<<< orphan*/  FUNC0 () ; 

void FUNC1(double ttcCost, double distanceCost, double accelerationCost, double jerkCost){
  FUNC0();
  int    i;
  const int STEP_MULTIPLIER = 3;

  /* Initialize the states and controls. */
  for (i = 0; i < NX * (N + 1); ++i)  acadoVariables.x[ i ] = 0.0;
  for (i = 0; i < NU * N; ++i)  acadoVariables.u[ i ] = 0.0;

  /* Initialize the measurements/reference. */
  for (i = 0; i < NY * N; ++i)  acadoVariables.y[ i ] = 0.0;
  for (i = 0; i < NYN; ++i)  acadoVariables.yN[ i ] = 0.0;

  /* MPC: initialize the current state feedback. */
  for (i = 0; i < NX; ++i) acadoVariables.x0[ i ] = 0.0;
  // Set weights

  for (i = 0; i < N; i++) {
    int f = 1;
    if (i > 4){
      f = STEP_MULTIPLIER;
    }
    // Setup diagonal entries
    acadoVariables.W[NY*NY*i + (NY+1)*0] = ttcCost * f; // exponential cost for time-to-collision (ttc)
    acadoVariables.W[NY*NY*i + (NY+1)*1] = distanceCost * f; // desired distance
    acadoVariables.W[NY*NY*i + (NY+1)*2] = accelerationCost * f; // acceleration
    acadoVariables.W[NY*NY*i + (NY+1)*3] = jerkCost * f; // jerk
  }
  acadoVariables.WN[(NYN+1)*0] = ttcCost * STEP_MULTIPLIER; // exponential cost for danger zone
  acadoVariables.WN[(NYN+1)*1] = distanceCost * STEP_MULTIPLIER; // desired distance
  acadoVariables.WN[(NYN+1)*2] = accelerationCost * STEP_MULTIPLIER; // acceleration

}