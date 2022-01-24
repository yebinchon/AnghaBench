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
struct TYPE_4__ {scalar_t__ identity; int /*<<< orphan*/ * obj; int /*<<< orphan*/ * identity_value; int /*<<< orphan*/  userloops; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  ptr; int /*<<< orphan*/  core_signature; int /*<<< orphan*/  core_offsets; int /*<<< orphan*/  core_dim_flags; int /*<<< orphan*/  core_dim_sizes; int /*<<< orphan*/  core_dim_ixs; int /*<<< orphan*/  core_num_dims; } ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ PyUFunc_IdentityValue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(PyUFuncObject *ufunc)
{
    FUNC2((PyObject *)ufunc);
    FUNC0(ufunc->core_num_dims);
    FUNC0(ufunc->core_dim_ixs);
    FUNC0(ufunc->core_dim_sizes);
    FUNC0(ufunc->core_dim_flags);
    FUNC0(ufunc->core_offsets);
    FUNC0(ufunc->core_signature);
    FUNC0(ufunc->ptr);
    FUNC0(ufunc->op_flags);
    FUNC4(ufunc->userloops);
    if (ufunc->identity == PyUFunc_IdentityValue) {
        FUNC3(ufunc->identity_value);
    }
    if (ufunc->obj != NULL) {
        FUNC3(ufunc->obj);
    }
    FUNC1(ufunc);
}