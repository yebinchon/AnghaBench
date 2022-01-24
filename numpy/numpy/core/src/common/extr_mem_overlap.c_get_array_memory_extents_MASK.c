#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ npy_uintp ;
typedef  scalar_t__ npy_intp ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC7(PyArrayObject *arr,
                         npy_uintp *out_start, npy_uintp *out_end,
                         npy_uintp *num_bytes)
{
    npy_intp low, upper;
    int j;
    FUNC6(FUNC3(arr), FUNC4(arr),
                               FUNC2(arr), FUNC5(arr),
                               &low, &upper);
    *out_start = (npy_uintp)FUNC0(arr) + (npy_uintp)low;
    *out_end = (npy_uintp)FUNC0(arr) + (npy_uintp)upper;

    *num_bytes = FUNC3(arr);
    for (j = 0; j < FUNC4(arr); ++j) {
        *num_bytes *= FUNC1(arr, j);
    }
}