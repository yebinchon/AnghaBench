#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dscale; } ;
typedef  TYPE_1__ numeric ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 char* FUNC3 (TYPE_1__*,int) ; 

char *
FUNC4(numeric *num, int dscale)
{
	numeric    *numcopy = FUNC2();
	char	   *s;

	if (numcopy == NULL)
		return NULL;

	if (FUNC0(num, numcopy) < 0)
	{
		FUNC1(numcopy);
		return NULL;
	}

	if (dscale < 0)
		dscale = num->dscale;

	/* get_str_from_var may change its argument */
	s = FUNC3(numcopy, dscale);
	FUNC1(numcopy);
	return s;
}