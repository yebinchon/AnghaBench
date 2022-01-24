#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int Size ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * guc_variables ; 
 int num_guc_variables ; 

Size
FUNC2(void)
{
	Size		size;
	int			i;

	/* Add space reqd for saving the data size of the guc state */
	size = sizeof(Size);

	/* Add up the space needed for each GUC variable */
	for (i = 0; i < num_guc_variables; i++)
		size = FUNC0(size,
						FUNC1(guc_variables[i]));

	return size;
}