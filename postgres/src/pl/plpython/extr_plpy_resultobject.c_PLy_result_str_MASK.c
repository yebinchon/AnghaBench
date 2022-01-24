#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tp_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  rows; int /*<<< orphan*/  nrows; int /*<<< orphan*/  status; TYPE_1__* ob_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  tp_name; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PLyResultObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static PyObject *
FUNC6(PyObject *arg)
{
	PLyResultObject *ob = (PLyResultObject *) arg;

#if PY_MAJOR_VERSION >= 3
	return PyUnicode_FromFormat("<%s status=%S nrows=%S rows=%S>",
								Py_TYPE(ob)->tp_name,
								ob->status,
								ob->nrows,
								ob->rows);
#else
	return FUNC3("<%s status=%ld nrows=%ld rows=%s>",
							   ob->ob_type->tp_name,
							   FUNC0(ob->status),
							   FUNC0(ob->nrows),
							   FUNC2(FUNC1(ob->rows)));
#endif
}