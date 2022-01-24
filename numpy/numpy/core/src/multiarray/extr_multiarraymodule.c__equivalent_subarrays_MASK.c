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
struct TYPE_4__ {int /*<<< orphan*/  base; int /*<<< orphan*/  shape; } ;
typedef  TYPE_1__ PyArray_ArrayDescr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Py_EQ ; 

__attribute__((used)) static int
FUNC4(PyArray_ArrayDescr *sub1, PyArray_ArrayDescr *sub2)
{
    int val;

    if (sub1 == sub2) {
        return 1;

    }
    if (sub1 == NULL || sub2 == NULL) {
        return 0;
    }

    val = FUNC3(sub1->shape, sub2->shape, Py_EQ);
    if (val != 1 || FUNC2()) {
        FUNC1();
        return 0;
    }

    return FUNC0(sub1->base, sub2->base);
}