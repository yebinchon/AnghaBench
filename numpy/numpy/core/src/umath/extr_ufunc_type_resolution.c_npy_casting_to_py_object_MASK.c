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
typedef  int /*<<< orphan*/  PyObject ;
typedef  int NPY_CASTING ;

/* Variables and functions */
#define  NPY_EQUIV_CASTING 132 
#define  NPY_NO_CASTING 131 
#define  NPY_SAFE_CASTING 130 
#define  NPY_SAME_KIND_CASTING 129 
#define  NPY_UNSAFE_CASTING 128 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 

__attribute__((used)) static PyObject *
FUNC2(NPY_CASTING casting)
{
    switch (casting) {
        case NPY_NO_CASTING:
            return FUNC1("no");
        case NPY_EQUIV_CASTING:
            return FUNC1("equiv");
        case NPY_SAFE_CASTING:
            return FUNC1("safe");
        case NPY_SAME_KIND_CASTING:
            return FUNC1("same_kind");
        case NPY_UNSAFE_CASTING:
            return FUNC1("unsafe");
        default:
            return FUNC0(casting);
    }
}