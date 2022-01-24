#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_intp ;
typedef  int npy_int ;
struct TYPE_15__ {int src_offset; int dst_offset; int /*<<< orphan*/  data; int /*<<< orphan*/  src_itemsize; int /*<<< orphan*/  stransfer; } ;
typedef  TYPE_2__ _single_field_transfer ;
struct TYPE_14__ {int /*<<< orphan*/ * clone; int /*<<< orphan*/ * free; } ;
struct TYPE_16__ {int field_count; TYPE_2__ fields; TYPE_1__ base; } ;
typedef  TYPE_3__ _field_transfer_data ;
struct TYPE_17__ {int /*<<< orphan*/  elsize; int /*<<< orphan*/  fields; int /*<<< orphan*/  names; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_StridedUnaryOp ;
typedef  TYPE_4__ PyArray_Descr ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NPY_FAIL ; 
 scalar_t__ NPY_SUCCEED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_4__**,int*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _field_transfer_data_clone ; 
 int /*<<< orphan*/  _field_transfer_data_free ; 
 int /*<<< orphan*/  _strided_to_strided_field_transfer ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC13(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            PyArray_Descr *src_dtype, PyArray_Descr *dst_dtype,
                            int move_references,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    PyObject *key, *tup, *title;
    PyArray_Descr *src_fld_dtype, *dst_fld_dtype;
    npy_int i, field_count, structsize;
    int src_offset, dst_offset;
    _field_transfer_data *data;
    _single_field_transfer *fields;
    int failed = 0;

    /*
     * There are three cases to take care of: 1. src is non-structured,
     * 2. dst is non-structured, or 3. both are structured.
     */

    /* 1. src is non-structured. Copy the src value to all the fields of dst */
    if (!FUNC5(src_dtype)) {
        field_count = FUNC11(dst_dtype->names);

        /* Allocate the field-data structure and populate it */
        structsize = sizeof(_field_transfer_data) +
                        (field_count + 1) * sizeof(_single_field_transfer);
        data = (_field_transfer_data *)FUNC4(structsize);
        if (data == NULL) {
            FUNC8();
            return NPY_FAIL;
        }
        data->base.free = &_field_transfer_data_free;
        data->base.clone = &_field_transfer_data_clone;
        fields = &data->fields;

        for (i = 0; i < field_count; ++i) {
            key = FUNC10(dst_dtype->names, i);
            tup = FUNC7(dst_dtype->fields, key);
            if (!FUNC1(tup, "Oi|O", &dst_fld_dtype,
                                                    &dst_offset, &title)) {
                FUNC3(data);
                return NPY_FAIL;
            }
            if (FUNC2(0,
                                    src_stride, dst_stride,
                                    src_dtype, dst_fld_dtype,
                                    0,
                                    &fields[i].stransfer,
                                    &fields[i].data,
                                    out_needs_api) != NPY_SUCCEED) {
                for (i = i-1; i >= 0; --i) {
                    FUNC0(fields[i].data);
                }
                FUNC3(data);
                return NPY_FAIL;
            }
            fields[i].src_offset = 0;
            fields[i].dst_offset = dst_offset;
            fields[i].src_itemsize = src_dtype->elsize;
        }

        /*
         * If references should be decrefd in src, add
         * another transfer function to do that.
         */
        if (move_references && FUNC6(src_dtype)) {
            if (FUNC12(0,
                                    src_stride,
                                    src_dtype,
                                    &fields[field_count].stransfer,
                                    &fields[field_count].data,
                                    out_needs_api) != NPY_SUCCEED) {
                for (i = 0; i < field_count; ++i) {
                    FUNC0(fields[i].data);
                }
                FUNC3(data);
                return NPY_FAIL;
            }
            fields[field_count].src_offset = 0;
            fields[field_count].dst_offset = 0;
            fields[field_count].src_itemsize = src_dtype->elsize;
            field_count++;
        }
        data->field_count = field_count;

        *out_stransfer = &_strided_to_strided_field_transfer;
        *out_transferdata = (NpyAuxData *)data;

        return NPY_SUCCEED;
    }

    /* 2. dst is non-structured. Allow transfer from single-field src to dst */
    if (!FUNC5(dst_dtype)) {
        if (FUNC11(src_dtype->names) != 1) {
            FUNC9(PyExc_ValueError,
                    "Can't cast from structure to non-structure, except if the "
                    "structure only has a single field.");
            return NPY_FAIL;
        }

        /* Allocate the field-data structure and populate it */
        structsize = sizeof(_field_transfer_data) +
                        1 * sizeof(_single_field_transfer);
        data = (_field_transfer_data *)FUNC4(structsize);
        if (data == NULL) {
            FUNC8();
            return NPY_FAIL;
        }
        data->base.free = &_field_transfer_data_free;
        data->base.clone = &_field_transfer_data_clone;
        fields = &data->fields;

        key = FUNC10(src_dtype->names, 0);
        tup = FUNC7(src_dtype->fields, key);
        if (!FUNC1(tup, "Oi|O",
                              &src_fld_dtype, &src_offset, &title)) {
            return NPY_FAIL;
        }

        if (FUNC2(0,
                                             src_stride, dst_stride,
                                             src_fld_dtype, dst_dtype,
                                             move_references,
                                             &fields[0].stransfer,
                                             &fields[0].data,
                                             out_needs_api) != NPY_SUCCEED) {
            FUNC3(data);
            return NPY_FAIL;
        }
        fields[0].src_offset = src_offset;
        fields[0].dst_offset = 0;
        fields[0].src_itemsize = src_fld_dtype->elsize;

        data->field_count = 1;

        *out_stransfer = &_strided_to_strided_field_transfer;
        *out_transferdata = (NpyAuxData *)data;

        return NPY_SUCCEED;
    }

    /* 3. Otherwise both src and dst are structured arrays */
    field_count = FUNC11(dst_dtype->names);

    /* Match up the fields to copy (field-by-field transfer) */
    if (FUNC11(src_dtype->names) != field_count) {
        FUNC9(PyExc_ValueError, "structures must have the same size");
        return NPY_FAIL;
    }

    /* Allocate the field-data structure and populate it */
    structsize = sizeof(_field_transfer_data) +
                    field_count * sizeof(_single_field_transfer);
    data = (_field_transfer_data *)FUNC4(structsize);
    if (data == NULL) {
        FUNC8();
        return NPY_FAIL;
    }
    data->base.free = &_field_transfer_data_free;
    data->base.clone = &_field_transfer_data_clone;
    fields = &data->fields;

    /* set up the transfer function for each field */
    for (i = 0; i < field_count; ++i) {
        key = FUNC10(dst_dtype->names, i);
        tup = FUNC7(dst_dtype->fields, key);
        if (!FUNC1(tup, "Oi|O", &dst_fld_dtype,
                                                &dst_offset, &title)) {
            failed = 1;
            break;
        }
        key = FUNC10(src_dtype->names, i);
        tup = FUNC7(src_dtype->fields, key);
        if (!FUNC1(tup, "Oi|O", &src_fld_dtype,
                                                &src_offset, &title)) {
            failed = 1;
            break;
        }

        if (FUNC2(0,
                                             src_stride, dst_stride,
                                             src_fld_dtype, dst_fld_dtype,
                                             move_references,
                                             &fields[i].stransfer,
                                             &fields[i].data,
                                             out_needs_api) != NPY_SUCCEED) {
            failed = 1;
            break;
        }
        fields[i].src_offset = src_offset;
        fields[i].dst_offset = dst_offset;
        fields[i].src_itemsize = src_fld_dtype->elsize;
    }

    if (failed) {
        for (i = i-1; i >= 0; --i) {
            FUNC0(fields[i].data);
        }
        FUNC3(data);
        return NPY_FAIL;
    }

    data->field_count = field_count;

    *out_stransfer = &_strided_to_strided_field_transfer;
    *out_transferdata = (NpyAuxData *)data;

    return NPY_SUCCEED;
}