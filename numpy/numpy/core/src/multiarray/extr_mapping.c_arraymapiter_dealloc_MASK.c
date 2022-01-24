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
struct TYPE_4__ {int /*<<< orphan*/ * extra_op_iter; int /*<<< orphan*/ * subspace_iter; int /*<<< orphan*/ * outer; int /*<<< orphan*/  extra_op_dtype; int /*<<< orphan*/  extra_op; int /*<<< orphan*/  subspace; int /*<<< orphan*/  ait; int /*<<< orphan*/  array; } ;
typedef  TYPE_1__ PyArrayMapIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(PyArrayMapIterObject *mit)
{
    FUNC1(mit->array);
    FUNC3(mit->array);
    FUNC3(mit->ait);
    FUNC3(mit->subspace);
    FUNC3(mit->extra_op);
    FUNC3(mit->extra_op_dtype);
    if (mit->outer != NULL) {
        FUNC0(mit->outer);
    }
    if (mit->subspace_iter != NULL) {
        FUNC0(mit->subspace_iter);
    }
    if (mit->extra_op_iter != NULL) {
        FUNC0(mit->extra_op_iter);
    }
    FUNC2(mit);
}