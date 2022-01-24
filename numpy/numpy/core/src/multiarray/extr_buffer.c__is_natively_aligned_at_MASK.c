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
struct TYPE_3__ {int alignment; int elsize; } ;
typedef  int Py_ssize_t ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(PyArray_Descr *descr,
                        PyArrayObject *arr, Py_ssize_t offset)
{
    int k;

    if ((Py_ssize_t)(FUNC0(arr)) % descr->alignment != 0) {
        return 0;
    }

    if (offset % descr->alignment != 0) {
        return 0;
    }

    if (descr->elsize % descr->alignment) {
        return 0;
    }

    for (k = 0; k < FUNC2(arr); ++k) {
        if (FUNC1(arr, k) > 1) {
            if (FUNC3(arr, k) % descr->alignment != 0) {
                return 0;
            }
        }
    }

    return 1;
}