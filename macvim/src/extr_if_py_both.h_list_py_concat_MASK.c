#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  v_type; scalar_t__ v_lock; } ;
struct TYPE_6__ {TYPE_5__ li_tv; } ;
typedef  TYPE_1__ listitem_T ;
typedef  int /*<<< orphan*/  list_T ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VAR_UNKNOWN ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(list_T *l, PyObject *obj, PyObject *lookup_dict)
{
    PyObject	*iterator;
    PyObject	*item;
    listitem_T	*li;

    if (!(iterator = FUNC3(obj)))
	return -1;

    while ((item = FUNC2(iterator)))
    {
	if (!(li = FUNC7()))
	{
	    FUNC0();
	    FUNC4(item);
	    FUNC4(iterator);
	    return -1;
	}
	li->li_tv.v_lock = 0;
	li->li_tv.v_type = VAR_UNKNOWN;

	if (FUNC5(item, &li->li_tv, lookup_dict) == -1)
	{
	    FUNC4(item);
	    FUNC4(iterator);
	    FUNC8(li);
	    return -1;
	}

	FUNC4(item);

	FUNC6(l, li);
    }

    FUNC4(iterator);

    /* Iterator may have finished due to an exception */
    if (FUNC1())
	return -1;

    return 0;
}