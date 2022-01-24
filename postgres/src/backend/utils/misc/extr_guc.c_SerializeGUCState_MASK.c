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
typedef  int /*<<< orphan*/  actual_size ;
typedef  int Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * guc_variables ; 
 int /*<<< orphan*/  FUNC1 (char*,int*,int) ; 
 int num_guc_variables ; 
 int /*<<< orphan*/  FUNC2 (char**,int*,int /*<<< orphan*/ ) ; 

void
FUNC3(Size maxsize, char *start_address)
{
	char	   *curptr;
	Size		actual_size;
	Size		bytes_left;
	int			i;

	/* Reserve space for saving the actual size of the guc state */
	FUNC0(maxsize > sizeof(actual_size));
	curptr = start_address + sizeof(actual_size);
	bytes_left = maxsize - sizeof(actual_size);

	for (i = 0; i < num_guc_variables; i++)
		FUNC2(&curptr, &bytes_left, guc_variables[i]);

	/* Store actual size without assuming alignment of start_address. */
	actual_size = maxsize - bytes_left - sizeof(actual_size);
	FUNC1(start_address, &actual_size, sizeof(actual_size));
}