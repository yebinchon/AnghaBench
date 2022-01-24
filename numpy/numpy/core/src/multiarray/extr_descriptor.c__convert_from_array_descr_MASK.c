#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_1__ ;

/* Type definitions */
struct TYPE_42__ {char flags; int alignment; int elsize; struct TYPE_42__* names; struct TYPE_42__* fields; } ;
typedef  TYPE_1__ PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 char NPY_ALIGNED_STRUCT ; 
 int NPY_FAIL ; 
 char NPY_FROM_FIELDS ; 
 char NPY_NEEDS_PYAPI ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  NPY_VOID ; 
 int FUNC1 (TYPE_1__*,TYPE_1__**) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__**) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 TYPE_1__* FUNC11 (long) ; 
 TYPE_1__* FUNC12 (TYPE_1__*,int) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 TYPE_1__* FUNC16 (TYPE_1__*,int) ; 
 int FUNC17 (TYPE_1__*) ; 
 TYPE_1__* FUNC18 (TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int,TYPE_1__*) ; 
 scalar_t__ FUNC21 (TYPE_1__*) ; 
 TYPE_1__* FUNC22 (char*,int) ; 
 scalar_t__ FUNC23 (TYPE_1__*) ; 
 TYPE_1__* FUNC24 (TYPE_1__*) ; 
 TYPE_1__* FUNC25 (TYPE_1__*) ; 
 scalar_t__ FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 

__attribute__((used)) static PyArray_Descr *
FUNC30(PyObject *obj, int align)
{
    int n, i, totalsize;
    int ret;
    PyObject *fields, *item, *newobj;
    PyObject *name, *tup, *title;
    PyObject *nameslist;
    PyArray_Descr *new;
    PyArray_Descr *conv;
    /* Types with fields need the Python C API for field access */
    char dtypeflags = NPY_NEEDS_PYAPI;
    int maxalign = 0;

    n = FUNC13(obj);
    nameslist = FUNC19(n);
    if (!nameslist) {
        return NULL;
    }
    totalsize = 0;
    fields = FUNC7();
    for (i = 0; i < n; i++) {
        item = FUNC12(obj, i);
        if (!FUNC15(item) || (FUNC17(item) < 2)) {
            goto fail;
        }
        name = FUNC16(item, 0);
        if (FUNC5(name)) {
            title = NULL;
        }
        else if (FUNC15(name)) {
            if (FUNC17(name) != 2) {
                goto fail;
            }
            title = FUNC16(name, 0);
            name = FUNC16(name, 1);
            if (!FUNC5(name)) {
                goto fail;
            }
        }
        else {
            goto fail;
        }

        /* Insert name into nameslist */
        FUNC28(name);

#if !defined(NPY_PY3K)
        /* convert unicode name to ascii on Python 2 if possible */ 
        if (FUNC26(name)) {
            PyObject *tmp = FUNC24(name);
            FUNC27(name);
            if (tmp == NULL) { 
                goto fail;
            }
            name = tmp;
        }
#endif
        if (FUNC23(name) == 0) {
            FUNC27(name);
            if (title == NULL) {
                name = FUNC22("f%d", i);
            }
#if defined(NPY_PY3K)
            /* On Py3, allow only non-empty Unicode strings as field names */
            else if (PyUString_Check(title) && PyUString_GET_SIZE(title) > 0) {
                name = title;
                Py_INCREF(name);
            }
            else {
                goto fail;
            }
#else
            else {
                name = title;
                FUNC28(name);
            }
#endif
        }
        FUNC20(nameslist, i, name);

        /* Process rest */

        if (FUNC17(item) == 2) {
            if (align) {
                ret = FUNC1(FUNC16(item, 1),
                                                        &conv);
            }
            else {
                ret = FUNC2(FUNC16(item, 1), &conv);
            }
        }
        else if (FUNC17(item) == 3) {
            newobj = FUNC18(item, 1, 3);
            if (align) {
                ret = FUNC1(newobj, &conv);
            }
            else {
                ret = FUNC2(newobj, &conv);
            }
            FUNC27(newobj);
        }
        else {
            goto fail;
        }
        if (ret == NPY_FAIL) {
            goto fail;
        }

        if ((FUNC6(fields, name) != NULL)
             || (title
                 && FUNC5(title)
                 && (FUNC6(fields, title) != NULL))) {
#if defined(NPY_PY3K)
            name = PyUnicode_AsUTF8String(name);
#endif
            FUNC9(PyExc_ValueError,
                    "field '%s' occurs more than once", FUNC14(name));
#if defined(NPY_PY3K)
            Py_DECREF(name);
#endif
            FUNC27(conv);
            goto fail;
        }
        dtypeflags |= (conv->flags & NPY_FROM_FIELDS);
        if (align) {
            int _align;

            _align = conv->alignment;
            if (_align > 1) {
                totalsize = FUNC0(totalsize, _align);
            }
            maxalign = FUNC4(maxalign, _align);
        }
        tup = FUNC19((title == NULL ? 2 : 3));
        FUNC20(tup, 0, (PyObject *)conv);
        FUNC20(tup, 1, FUNC11((long) totalsize));

        /*
         * Title can be "meta-data".  Only insert it
         * into the fields dictionary if it is a string
         * and if it is not the same as the name.
         */
        if (title != NULL) {
            FUNC28(title);
            FUNC20(tup, 2, title);
            FUNC8(fields, name, tup);
            if (FUNC5(title)) {
                if (FUNC6(fields, title) != NULL) {
                    FUNC10(PyExc_ValueError,
                            "title already used as a name or title.");
                    FUNC27(tup);
                    goto fail;
                }
                FUNC8(fields, title, tup);
            }
        }
        else {
            FUNC8(fields, name, tup);
        }

        totalsize += conv->elsize;
        FUNC27(tup);
    }

    if (maxalign > 1) {
        totalsize = FUNC0(totalsize, maxalign);
    }

    new = FUNC3(NPY_VOID);
    if (new == NULL) {
        FUNC29(fields);
        FUNC29(nameslist);
        return NULL;
    }
    new->fields = fields;
    new->names = nameslist;
    new->elsize = totalsize;
    new->flags = dtypeflags;

    /* Structured arrays get a sticky aligned bit */
    if (align) {
        new->flags |= NPY_ALIGNED_STRUCT;
        new->alignment = maxalign;
    }
    return new;

 fail:
    FUNC27(fields);
    FUNC27(nameslist);
    return NULL;

}