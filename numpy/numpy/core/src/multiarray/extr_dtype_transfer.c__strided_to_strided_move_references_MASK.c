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
typedef  scalar_t__ npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(char *dst, npy_intp dst_stride,
                        char *src, npy_intp src_stride,
                        npy_intp N, npy_intp src_itemsize,
                        NpyAuxData *data)
{
    PyObject *src_ref = NULL, *dst_ref = NULL;
    while (N > 0) {
        FUNC0(&src_ref, src);
        FUNC0(&dst_ref, dst);

        /* Release the reference in dst */
        FUNC1("dec dst ref", dst_ref);
        FUNC2(dst_ref);
        /* Move the reference */
        FUNC1("move src ref", src_ref);
        FUNC0(dst, &src_ref);
        /* Set the source reference to NULL */
        src_ref = NULL;
        FUNC0(src, &src_ref);

        src += src_stride;
        dst += dst_stride;
        --N;
    }
}