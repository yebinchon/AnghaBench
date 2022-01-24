#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  win_T ;
struct TYPE_4__ {TYPE_2__* tabObject; } ;
typedef  TYPE_1__ WinListObject ;
struct TYPE_5__ {int /*<<< orphan*/  tab; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  scalar_t__ PyInt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_IndexError ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curtab ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static PyObject *
FUNC5(WinListObject *self, PyInt n)
{
    win_T *w;

    if (!(w = FUNC4(self->tabObject)))
	return NULL;

    for (; w != NULL; w = FUNC2(w), --n)
	if (n == 0)
	    return FUNC3(w, self->tabObject? self->tabObject->tab: curtab);

    FUNC1(PyExc_IndexError, FUNC0("no such window"));
    return NULL;
}