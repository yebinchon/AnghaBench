#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* v_list; } ;
struct TYPE_9__ {TYPE_1__ vval; int /*<<< orphan*/  v_type; } ;
typedef  TYPE_2__ typval_T ;
struct TYPE_10__ {int /*<<< orphan*/  lv_refcount; } ;
typedef  TYPE_3__ list_T ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  VAR_LIST ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 () ; 

__attribute__((used)) static int
FUNC3(PyObject *obj, typval_T *tv, PyObject *lookup_dict)
{
    list_T	*l;

    if (!(l = FUNC2()))
	return -1;

    tv->v_type = VAR_LIST;
    tv->vval.v_list = l;

    if (FUNC0(l, obj, lookup_dict) == -1)
    {
	FUNC1(l);
	return -1;
    }

    --l->lv_refcount;
    return 0;
}