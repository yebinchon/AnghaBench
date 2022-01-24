#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_intp ;
typedef  int npy_int ;
struct TYPE_11__ {int src_offset; int /*<<< orphan*/  src_itemsize; scalar_t__ dst_offset; int /*<<< orphan*/  data; int /*<<< orphan*/  stransfer; } ;
typedef  TYPE_2__ _single_field_transfer ;
struct TYPE_10__ {int /*<<< orphan*/ * clone; int /*<<< orphan*/ * free; } ;
struct TYPE_12__ {int field_count; TYPE_2__ fields; TYPE_1__ base; } ;
typedef  TYPE_3__ _field_transfer_data ;
struct TYPE_13__ {int /*<<< orphan*/  elsize; int /*<<< orphan*/  fields; int /*<<< orphan*/ * names; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_StridedUnaryOp ;
typedef  TYPE_4__ PyArray_Descr ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NPY_FAIL ; 
 scalar_t__ NPY_SUCCEED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_4__**,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _field_transfer_data_clone ; 
 int /*<<< orphan*/  _field_transfer_data_free ; 
 int /*<<< orphan*/  _strided_to_strided_field_transfer ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC10(int aligned,
                            npy_intp src_stride,
                            PyArray_Descr *src_dtype,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata,
                            int *out_needs_api)
{
    PyObject *names, *key, *tup, *title;
    PyArray_Descr *src_fld_dtype;
    npy_int i, names_size, field_count, structsize;
    int src_offset;
    _field_transfer_data *data;
    _single_field_transfer *fields;

    names = src_dtype->names;
    names_size = FUNC8(src_dtype->names);

    field_count = names_size;
    structsize = sizeof(_field_transfer_data) +
                    field_count * sizeof(_single_field_transfer);
    /* Allocate the data and populate it */
    data = (_field_transfer_data *)FUNC3(structsize);
    if (data == NULL) {
        FUNC6();
        return NPY_FAIL;
    }
    data->base.free = &_field_transfer_data_free;
    data->base.clone = &_field_transfer_data_clone;
    fields = &data->fields;

    field_count = 0;
    for (i = 0; i < names_size; ++i) {
        key = FUNC7(names, i);
        tup = FUNC5(src_dtype->fields, key);
        if (!FUNC1(tup, "Oi|O", &src_fld_dtype,
                                                &src_offset, &title)) {
            FUNC2(data);
            return NPY_FAIL;
        }
        if (FUNC4(src_fld_dtype)) {
            if (out_needs_api) {
                *out_needs_api = 1;
            }
            if (FUNC9(0,
                                    src_stride,
                                    src_fld_dtype,
                                    &fields[field_count].stransfer,
                                    &fields[field_count].data,
                                    out_needs_api) != NPY_SUCCEED) {
                for (i = field_count-1; i >= 0; --i) {
                    FUNC0(fields[i].data);
                }
                FUNC2(data);
                return NPY_FAIL;
            }
            fields[field_count].src_offset = src_offset;
            fields[field_count].dst_offset = 0;
            fields[field_count].src_itemsize = src_dtype->elsize;
            field_count++;
        }
    }

    data->field_count = field_count;

    *out_stransfer = &_strided_to_strided_field_transfer;
    *out_transferdata = (NpyAuxData *)data;

    return NPY_SUCCEED;
}