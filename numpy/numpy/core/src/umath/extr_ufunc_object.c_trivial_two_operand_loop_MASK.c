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
typedef  int /*<<< orphan*/  (* PyUFuncGenericFunction ) (char**,scalar_t__*,scalar_t__*,void*) ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_BEGIN_THREADS_DEF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NPY_END_THREADS ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(PyArrayObject **op,
                    PyUFuncGenericFunction innerloop,
                    void *innerloopdata)
{
    char *data[2];
    npy_intp count[2], stride[2];
    int needs_api;
    NPY_BEGIN_THREADS_DEF;

    needs_api = FUNC4(FUNC2(op[0])) ||
                FUNC4(FUNC2(op[1]));

    FUNC3(op[0], op[1],
                                            count[0],
                                            data[0], data[1],
                                            stride[0], stride[1]);
    count[1] = count[0];
    FUNC1("two operand loop count %d\n", (int)count[0]);

    if (!needs_api) {
        FUNC0(count[0]);
    }

    innerloop(data, count, stride, innerloopdata);

    NPY_END_THREADS;
}