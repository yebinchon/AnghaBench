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
typedef  int npy_intp ;
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(char **string, Py_ssize_t *n, Py_ssize_t *max_n, char *data, int nd,
          npy_intp *dimensions, npy_intp *strides, PyArrayObject* self)
{
    PyObject *op = NULL, *sp = NULL;
    char *ostring;
    npy_intp i, N, ret = 0;

#define CHECK_MEMORY do {                           \
        if (extend_str(string, *n, max_n) == NULL) {    \
            ret = -1;                               \
            goto end;                               \
        }                                           \
    } while (0)

    if (nd == 0) {
        if ((op = FUNC0(self, data)) == NULL) {
            return -1;
        }
        sp = FUNC1(op);
        if (sp == NULL) {
            ret = -1;
            goto end;
        }
        ostring = FUNC2(sp);
        N = FUNC3(sp)*sizeof(char);
        *n += N;
        CHECK_MEMORY;
        FUNC5(*string + (*n - N), ostring, N);
    }
    else {
        CHECK_MEMORY;
        (*string)[*n] = '[';
        *n += 1;
        for (i = 0; i < dimensions[0]; i++) {
            if (FUNC6(string, n, max_n,
                          data + (*strides)*i,
                          nd - 1, dimensions + 1,
                          strides + 1, self) < 0) {
                return -1;
            }
            CHECK_MEMORY;
            if (i < dimensions[0] - 1) {
                (*string)[*n] = ',';
                (*string)[*n+1] = ' ';
                *n += 2;
            }
        }
        CHECK_MEMORY;
        (*string)[*n] = ']';
        *n += 1;
    }

#undef CHECK_MEMORY

end:
    FUNC4(op);
    FUNC4(sp);
    return ret;
}