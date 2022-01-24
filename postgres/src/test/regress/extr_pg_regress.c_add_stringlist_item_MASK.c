#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ _stringlist ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

void
FUNC2(_stringlist **listhead, const char *str)
{
	_stringlist *newentry = FUNC0(sizeof(_stringlist));
	_stringlist *oldentry;

	newentry->str = FUNC1(str);
	newentry->next = NULL;
	if (*listhead == NULL)
		*listhead = newentry;
	else
	{
		for (oldentry = *listhead; oldentry->next; oldentry = oldentry->next)
			 /* skip */ ;
		oldentry->next = newentry;
	}
}