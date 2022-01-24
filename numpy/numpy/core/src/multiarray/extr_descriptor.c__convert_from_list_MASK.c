#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char flags; int alignment; int elsize; int /*<<< orphan*/ * names; int /*<<< orphan*/ * fields; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 char NPY_ALIGNED_STRUCT ; 
 int NPY_FAIL ; 
 char NPY_FROM_FIELDS ; 
 char NPY_NEEDS_PYAPI ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  NPY_VOID ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (long) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArray_Descr *
FUNC16(PyObject *obj, int align)
{
    int n, i;
    int totalsize;
    PyObject *fields;
    PyArray_Descr *conv = NULL;
    PyArray_Descr *new;
    PyObject *key, *tup;
    PyObject *nameslist = NULL;
    int ret;
    int maxalign = 0;
    /* Types with fields need the Python C API for field access */
    char dtypeflags = NPY_NEEDS_PYAPI;

    n = FUNC11(obj);
    /*
     * Ignore any empty string at end which _internal._commastring
     * can produce
     */
    key = FUNC10(obj, n-1);
    if (FUNC5(key) && FUNC6(key) == 0) {
        n = n - 1;
    }
    /* End ignore code.*/
    totalsize = 0;
    if (n == 0) {
        return NULL;
    }
    nameslist = FUNC12(n);
    if (!nameslist) {
        return NULL;
    }
    fields = FUNC7();
    for (i = 0; i < n; i++) {
        tup = FUNC12(2);
        key = FUNC14("f%d", i);
        if (align) {
            ret = FUNC1(FUNC10(obj, i), &conv);
        }
        else {
            ret = FUNC2(FUNC10(obj, i), &conv);
        }
        if (ret == NPY_FAIL) {
            FUNC15(tup);
            FUNC15(key);
            goto fail;
        }
        dtypeflags |= (conv->flags & NPY_FROM_FIELDS);
        FUNC13(tup, 0, (PyObject *)conv);
        if (align) {
            int _align;

            _align = conv->alignment;
            if (_align > 1) {
                totalsize = FUNC0(totalsize, _align);
            }
            maxalign = FUNC4(maxalign, _align);
        }
        FUNC13(tup, 1, FUNC9((long) totalsize));
        FUNC8(fields, key, tup);
        FUNC15(tup);
        FUNC13(nameslist, i, key);
        totalsize += conv->elsize;
    }
    new = FUNC3(NPY_VOID);
    new->fields = fields;
    new->names = nameslist;
    new->flags = dtypeflags;
    if (maxalign > 1) {
        totalsize = FUNC0(totalsize, maxalign);
    }
    /* Structured arrays get a sticky aligned bit */
    if (align) {
        new->flags |= NPY_ALIGNED_STRUCT;
        new->alignment = maxalign;
    }
    new->elsize = totalsize;
    return new;

 fail:
    FUNC15(nameslist);
    FUNC15(fields);
    return NULL;
}