#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ao; int /*<<< orphan*/  dataptr; } ;
struct TYPE_5__ {int numiter; scalar_t__ index; scalar_t__ size; TYPE_2__** iters; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArrayMultiIterObject ;
typedef  TYPE_2__ PyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC5(PyArrayMultiIterObject *multi)
{
    PyObject *ret;
    int i, n;

    n = multi->numiter;
    ret = FUNC2(n);
    if (ret == NULL) {
        return NULL;
    }
    if (multi->index < multi->size) {
        for (i = 0; i < n; i++) {
            PyArrayIterObject *it=multi->iters[i];
            FUNC3(ret, i,
                             FUNC1(it->dataptr, it->ao));
            FUNC0(it);
        }
        multi->index++;
        return ret;
    }
    FUNC4(ret);
    return NULL;
}