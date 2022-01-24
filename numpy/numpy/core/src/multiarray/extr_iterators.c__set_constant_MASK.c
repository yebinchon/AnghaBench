#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  elsize; } ;
struct TYPE_8__ {scalar_t__ ao; } ;
struct TYPE_7__ {TYPE_3__* _internal_iter; } ;
struct TYPE_6__ {int flags; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArrayObject_fields ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_2__ PyArrayNeighborhoodIterObject ;
typedef  TYPE_3__ PyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ARRAY_BEHAVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_MemoryError ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char* FUNC11(PyArrayNeighborhoodIterObject* iter,
        PyArrayObject *fill)
{
    char *ret;
    PyArrayIterObject *ar = iter->_internal_iter;
    int storeflags, st;

    ret = FUNC7(FUNC1(ar->ao)->elsize);
    if (ret == NULL) {
        FUNC8(PyExc_MemoryError);
        return NULL;
    }

    if (FUNC4(ar->ao)) {
        FUNC10(ret, FUNC0(fill), sizeof(PyObject*));
        FUNC9(*(PyObject**)ret);
    } else {
        /* Non-object types */

        storeflags = FUNC3(ar->ao);
        FUNC2(ar->ao, NPY_ARRAY_BEHAVED);
        st = FUNC5(ar->ao, ret, (PyObject*)fill);
        ((PyArrayObject_fields *)ar->ao)->flags = storeflags;

        if (st < 0) {
            FUNC6(ret);
            return NULL;
        }
    }

    return ret;
}