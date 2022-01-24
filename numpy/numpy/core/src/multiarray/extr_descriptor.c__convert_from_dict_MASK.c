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
struct TYPE_42__ {int alignment; long elsize; char flags; struct TYPE_42__* metadata; struct TYPE_42__* fields; struct TYPE_42__* names; } ;
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
 long FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,long,...) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 TYPE_1__* FUNC16 (int) ; 
 TYPE_1__* FUNC17 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC18 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 TYPE_1__* FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 TYPE_1__* Py_False ; 
 TYPE_1__* Py_None ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* Py_True ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 TYPE_1__* FUNC27 (TYPE_1__*,int) ; 
 scalar_t__ FUNC28 (int) ; 
 scalar_t__ FUNC29 (TYPE_1__*) ; 

__attribute__((used)) static PyArray_Descr *
FUNC30(PyObject *obj, int align)
{
    PyArray_Descr *new;
    PyObject *fields = NULL;
    PyObject *names  = NULL;
    PyObject *offsets= NULL;
    PyObject *descrs = NULL;
    PyObject *titles = NULL;
    PyObject *metadata, *tmp;
    int n, i;
    int totalsize, itemsize;
    int maxalign = 0;
    /* Types with fields need the Python C API for field access */
    char dtypeflags = NPY_NEEDS_PYAPI;
    int has_out_of_order_fields = 0;

    fields = FUNC10();
    if (fields == NULL) {
        return (PyArray_Descr *)FUNC14();
    }
    /*
     * Use PyMapping_GetItemString to support dictproxy objects as well.
     */
    names = FUNC17(obj, "names");
    if (names == NULL) {
        FUNC24(fields);
        /* XXX should check this is a KeyError */
        FUNC12();
        return FUNC27(obj, align);
    }
    descrs = FUNC17(obj, "formats");
    if (descrs == NULL) {
        FUNC24(fields);
        /* XXX should check this is a KeyError */
        FUNC12();
        FUNC24(names);
        return FUNC27(obj, align);
    }
    n = FUNC19(names);
    offsets = FUNC17(obj, "offsets");
    if (!offsets) {
        FUNC12();
    }
    titles = FUNC17(obj, "titles");
    if (!titles) {
        FUNC12();
    }

    if ((n > FUNC19(descrs))
        || (offsets && (n > FUNC19(offsets)))
        || (titles && (n > FUNC19(titles)))) {
        FUNC15(PyExc_ValueError,
                "'names', 'formats', 'offsets', and 'titles' dict "
                "entries must have the same length");
        goto fail;
    }

    /*
     * If a property 'aligned' is in the dict, it overrides the align flag
     * to be True if it not already true.
     */
    tmp = FUNC17(obj, "aligned");
    if (tmp == NULL) {
        FUNC12();
    } else {
        if (tmp == Py_True) {
            align = 1;
        }
        else if (tmp != Py_False) {
            FUNC24(tmp);
            FUNC15(PyExc_ValueError,
                    "NumPy dtype descriptor includes 'aligned' entry, "
                    "but its value is neither True nor False");
            goto fail;
        }
        FUNC24(tmp);
    }

    totalsize = 0;
    for (i = 0; i < n; i++) {
        PyObject *tup, *descr, *ind, *title, *name, *off;
        int len, ret, _align = 1;
        PyArray_Descr *newdescr;

        /* Build item to insert (descr, offset, [title])*/
        len = 2;
        title = NULL;
        ind = FUNC16(i);
        if (titles) {
            title=FUNC18(titles, ind);
            if (title && title != Py_None) {
                len = 3;
            }
            else {
                FUNC26(title);
            }
            FUNC12();
        }
        tup = FUNC22(len);
        descr = FUNC18(descrs, ind);
        if (!descr) {
            FUNC24(tup);
            FUNC24(ind);
            goto fail;
        }
        if (align) {
            ret = FUNC1(descr, &newdescr);
        }
        else {
            ret = FUNC2(descr, &newdescr);
        }
        FUNC24(descr);
        if (ret == NPY_FAIL) {
            FUNC24(tup);
            FUNC24(ind);
            goto fail;
        }
        FUNC23(tup, 0, (PyObject *)newdescr);
        if (align) {
            _align = newdescr->alignment;
            maxalign = FUNC4(maxalign,_align);
        }
        if (offsets) {
            long offset;
            off = FUNC18(offsets, ind);
            if (!off) {
                FUNC24(tup);
                FUNC24(ind);
                goto fail;
            }
            offset = FUNC5(off);
            if (FUNC28(offset)) {
                FUNC24(off);
                FUNC24(tup);
                FUNC24(ind);
                goto fail;
            }
            FUNC24(off);
            if (offset < 0) {
                FUNC13(PyExc_ValueError, "offset %ld cannot be negative",
                             offset);
                FUNC24(tup);
                FUNC24(ind);
                goto fail;
            }

            FUNC23(tup, 1, FUNC16(offset));
            /* Flag whether the fields are specified out of order */
            if (offset < totalsize) {
                has_out_of_order_fields = 1;
            }
            /* If align=True, enforce field alignment */
            if (align && offset % newdescr->alignment != 0) {
                FUNC13(PyExc_ValueError,
                        "offset %ld for NumPy dtype with fields is "
                        "not divisible by the field alignment %d "
                        "with align=True",
                        offset, newdescr->alignment);
                ret = NPY_FAIL;
            }
            else if (offset + newdescr->elsize > totalsize) {
                totalsize = offset + newdescr->elsize;
            }
        }
        else {
            if (align && _align > 1) {
                totalsize = FUNC0(totalsize, _align);
            }
            FUNC23(tup, 1, FUNC16(totalsize));
            totalsize += newdescr->elsize;
        }
        if (ret == NPY_FAIL) {
            FUNC24(ind);
            FUNC24(tup);
            goto fail;
        }
        if (len == 3) {
            FUNC23(tup, 2, title);
        }
        name = FUNC18(names, ind);
        FUNC24(ind);
        if (!name) {
            FUNC24(tup);
            goto fail;
        }
        if (!FUNC6(name)) {
            FUNC15(PyExc_ValueError,
                    "field names must be strings");
            FUNC24(tup);
            goto fail;
        }

        /* Insert into dictionary */
        if (FUNC8(fields, name) != NULL) {
            FUNC15(PyExc_ValueError,
                    "name already used as a name or title");
            FUNC24(tup);
            goto fail;
        }
        FUNC11(fields, name, tup);
        FUNC24(name);
        if (len == 3) {
            if (FUNC6(title)) {
                if (FUNC8(fields, title) != NULL) {
                    FUNC15(PyExc_ValueError,
                            "title already used as a name or title.");
                    FUNC24(tup);
                    goto fail;
                }
                FUNC11(fields, title, tup);
            }
        }
        FUNC24(tup);
        if (ret == NPY_FAIL) {
            goto fail;
        }
        dtypeflags |= (newdescr->flags & NPY_FROM_FIELDS);
    }

    new = FUNC3(NPY_VOID);
    if (new == NULL) {
        goto fail;
    }
    if (maxalign > 1) {
        totalsize = FUNC0(totalsize, maxalign);
    }
    if (align) {
        new->alignment = maxalign;
    }
    new->elsize = totalsize;
    if (!FUNC21(names)) {
        FUNC25(names, FUNC20(names));
        if (names == NULL) {
            FUNC24(new);
            goto fail;
        }
    }
    new->names = names;
    new->fields = fields;
    new->flags = dtypeflags;
    /* new takes responsibility for DECREFing names, fields */
    names = NULL;
    fields = NULL;

    /*
     * If the fields weren't in order, and there was an OBJECT type,
     * need to verify that no OBJECT types overlap with something else.
     */
    if (has_out_of_order_fields && FUNC7(new)) {
        if (FUNC29(new) < 0) {
            FUNC24(new);
            goto fail;
        }
    }

    /* Structured arrays get a sticky aligned bit */
    if (align) {
        new->flags |= NPY_ALIGNED_STRUCT;
    }

    /* Override the itemsize if provided */
    tmp = FUNC17(obj, "itemsize");
    if (tmp == NULL) {
        FUNC12();
    } else {
        itemsize = (int)FUNC5(tmp);
        FUNC24(tmp);
        if (FUNC28(itemsize)) {
            FUNC24(new);
            goto fail;
        }
        /* Make sure the itemsize isn't made too small */
        if (itemsize < new->elsize) {
            FUNC13(PyExc_ValueError,
                    "NumPy dtype descriptor requires %d bytes, "
                    "cannot override to smaller itemsize of %d",
                    new->elsize, itemsize);
            FUNC24(new);
            goto fail;
        }
        /* If align is set, make sure the alignment divides into the size */
        if (align && itemsize % new->alignment != 0) {
            FUNC13(PyExc_ValueError,
                    "NumPy dtype descriptor requires alignment of %d bytes, "
                    "which is not divisible into the specified itemsize %d",
                    new->alignment, itemsize);
            FUNC24(new);
            goto fail;
        }
        /* Set the itemsize */
        new->elsize = itemsize;
    }

    /* Add the metadata if provided */
    metadata = FUNC17(obj, "metadata");

    if (metadata == NULL) {
        FUNC12();
    }
    else if (new->metadata == NULL) {
        new->metadata = metadata;
    }
    else {
        int ret = FUNC9(new->metadata, metadata, 0);
        FUNC24(metadata);
        if (ret < 0) {
            FUNC24(new);
            goto fail;
        }
    }

    FUNC26(fields);
    FUNC26(names);
    FUNC26(descrs);
    FUNC26(offsets);
    FUNC26(titles);
    return new;

 fail:
    FUNC26(fields);
    FUNC26(names);
    FUNC26(descrs);
    FUNC26(offsets);
    FUNC26(titles);
    return NULL;
}