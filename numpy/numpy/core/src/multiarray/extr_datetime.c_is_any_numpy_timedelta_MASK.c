#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_bool ;
struct TYPE_2__ {scalar_t__ type_num; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ NPY_TIMEDELTA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Timedelta ; 

__attribute__((used)) static npy_bool
FUNC4(PyObject *obj)
{
    return (FUNC2(obj, Timedelta) ||
        (FUNC0(obj) && (
            FUNC1((PyArrayObject *)obj)->type_num == NPY_TIMEDELTA)) ||
        FUNC3(obj));
}