#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int alloc; char** array; int num; } ;
typedef  TYPE_1__ eary ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char**,int) ; 
 char* FUNC2 (char*) ; 

void
FUNC3(char *eltname, eary *eary)
{
	if (eary->alloc == 0)
	{
		eary	  ->alloc = 8;
		eary	  ->array = (char **) FUNC0(8 * sizeof(char *));
	}
	else if (eary->num >= eary->alloc)
	{
		eary	  ->alloc *= 2;
		eary	  ->array = (char **) FUNC1(eary->array,
												 eary->alloc * sizeof(char *));
	}

	eary	  ->array[eary->num] = FUNC2(eltname);
	eary	  ->num++;
}