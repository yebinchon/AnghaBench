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
typedef  int /*<<< orphan*/  win_T ;
struct TYPE_3__ {int /*<<< orphan*/  tabObject; } ;
typedef  TYPE_1__ WinListObject ;
typedef  int PyInt ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyInt
FUNC2(WinListObject *self)
{
    win_T	*w;
    PyInt	n = 0;

    if (!(w = FUNC1(self->tabObject)))
	return -1;

    while (w != NULL)
    {
	++n;
	w = FUNC0(w);
    }

    return n;
}