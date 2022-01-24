#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* tab; } ;
typedef  TYPE_1__ TabPageObject ;
struct TYPE_8__ {int /*<<< orphan*/  tp_curwin; int /*<<< orphan*/  tp_vars; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (long) ; 
 int /*<<< orphan*/  TabPageAttrs ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* curtab ; 
 int /*<<< orphan*/  curwin ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static PyObject *
FUNC7(TabPageObject *self, char *name)
{
    if (FUNC6(name, "windows") == 0)
	return FUNC3(self);
    else if (FUNC6(name, "number") == 0)
	return FUNC2((long) FUNC5(self->tab));
    else if (FUNC6(name, "vars") == 0)
	return FUNC0(self->tab->tp_vars);
    else if (FUNC6(name, "window") == 0)
    {
	/* For current tab window.c does not bother to set or update tp_curwin
	 */
	if (self->tab == curtab)
	    return FUNC4(curwin, curtab);
	else
	    return FUNC4(self->tab->tp_curwin, self->tab);
    }
    else if (FUNC6(name, "__members__") == 0)
	return FUNC1(NULL, TabPageAttrs);
    return NULL;
}