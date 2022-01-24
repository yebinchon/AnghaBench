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
struct TYPE_2__ {double* u; } ;

/* Variables and functions */
 int ACADO_N ; 
 int ACADO_NU ; 
 TYPE_1__ acadoVariables ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1( )
{
	int i, j;
	FUNC0("\nControl variables:\n[\n");
	for (i = 0; i < ACADO_N; ++i)
	{
		for (j = 0; j < ACADO_NU; ++j)
			FUNC0("\t%e", acadoVariables.u[i * ACADO_NU + j]);
		FUNC0("\n");
	}
	FUNC0("]\n\n");
}