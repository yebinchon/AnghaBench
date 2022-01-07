
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int npy_intp ;
typedef int npy_int ;
struct TYPE_15__ {int src_offset; int dst_offset; int data; int src_itemsize; int stransfer; } ;
typedef TYPE_2__ _single_field_transfer ;
struct TYPE_14__ {int * clone; int * free; } ;
struct TYPE_16__ {int field_count; TYPE_2__ fields; TYPE_1__ base; } ;
typedef TYPE_3__ _field_transfer_data ;
struct TYPE_17__ {int elsize; int fields; int names; } ;
typedef int PyObject ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_4__ PyArray_Descr ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int ) ;
 int NPY_FAIL ;
 scalar_t__ NPY_SUCCEED ;
 int PyArg_ParseTuple (int *,char*,TYPE_4__**,int*,int **) ;
 scalar_t__ PyArray_GetDTypeTransferFunction (int ,int ,int ,TYPE_4__*,TYPE_4__*,int,int *,int *,int*) ;
 int PyArray_free (TYPE_3__*) ;
 scalar_t__ PyArray_malloc (int) ;
 int PyDataType_HASFIELDS (TYPE_4__*) ;
 scalar_t__ PyDataType_REFCHK (TYPE_4__*) ;
 int * PyDict_GetItem (int ,int *) ;
 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyTuple_GET_ITEM (int ,int) ;
 int PyTuple_GET_SIZE (int ) ;
 int _field_transfer_data_clone ;
 int _field_transfer_data_free ;
 int _strided_to_strided_field_transfer ;
 scalar_t__ get_decsrcref_transfer_function (int ,int ,TYPE_4__*,int *,int *,int*) ;

__attribute__((used)) static int
get_fields_transfer_function(int aligned,
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







    if (!PyDataType_HASFIELDS(src_dtype)) {
        field_count = PyTuple_GET_SIZE(dst_dtype->names);


        structsize = sizeof(_field_transfer_data) +
                        (field_count + 1) * sizeof(_single_field_transfer);
        data = (_field_transfer_data *)PyArray_malloc(structsize);
        if (data == ((void*)0)) {
            PyErr_NoMemory();
            return NPY_FAIL;
        }
        data->base.free = &_field_transfer_data_free;
        data->base.clone = &_field_transfer_data_clone;
        fields = &data->fields;

        for (i = 0; i < field_count; ++i) {
            key = PyTuple_GET_ITEM(dst_dtype->names, i);
            tup = PyDict_GetItem(dst_dtype->fields, key);
            if (!PyArg_ParseTuple(tup, "Oi|O", &dst_fld_dtype,
                                                    &dst_offset, &title)) {
                PyArray_free(data);
                return NPY_FAIL;
            }
            if (PyArray_GetDTypeTransferFunction(0,
                                    src_stride, dst_stride,
                                    src_dtype, dst_fld_dtype,
                                    0,
                                    &fields[i].stransfer,
                                    &fields[i].data,
                                    out_needs_api) != NPY_SUCCEED) {
                for (i = i-1; i >= 0; --i) {
                    NPY_AUXDATA_FREE(fields[i].data);
                }
                PyArray_free(data);
                return NPY_FAIL;
            }
            fields[i].src_offset = 0;
            fields[i].dst_offset = dst_offset;
            fields[i].src_itemsize = src_dtype->elsize;
        }





        if (move_references && PyDataType_REFCHK(src_dtype)) {
            if (get_decsrcref_transfer_function(0,
                                    src_stride,
                                    src_dtype,
                                    &fields[field_count].stransfer,
                                    &fields[field_count].data,
                                    out_needs_api) != NPY_SUCCEED) {
                for (i = 0; i < field_count; ++i) {
                    NPY_AUXDATA_FREE(fields[i].data);
                }
                PyArray_free(data);
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


    if (!PyDataType_HASFIELDS(dst_dtype)) {
        if (PyTuple_GET_SIZE(src_dtype->names) != 1) {
            PyErr_SetString(PyExc_ValueError,
                    "Can't cast from structure to non-structure, except if the "
                    "structure only has a single field.");
            return NPY_FAIL;
        }


        structsize = sizeof(_field_transfer_data) +
                        1 * sizeof(_single_field_transfer);
        data = (_field_transfer_data *)PyArray_malloc(structsize);
        if (data == ((void*)0)) {
            PyErr_NoMemory();
            return NPY_FAIL;
        }
        data->base.free = &_field_transfer_data_free;
        data->base.clone = &_field_transfer_data_clone;
        fields = &data->fields;

        key = PyTuple_GET_ITEM(src_dtype->names, 0);
        tup = PyDict_GetItem(src_dtype->fields, key);
        if (!PyArg_ParseTuple(tup, "Oi|O",
                              &src_fld_dtype, &src_offset, &title)) {
            return NPY_FAIL;
        }

        if (PyArray_GetDTypeTransferFunction(0,
                                             src_stride, dst_stride,
                                             src_fld_dtype, dst_dtype,
                                             move_references,
                                             &fields[0].stransfer,
                                             &fields[0].data,
                                             out_needs_api) != NPY_SUCCEED) {
            PyArray_free(data);
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


    field_count = PyTuple_GET_SIZE(dst_dtype->names);


    if (PyTuple_GET_SIZE(src_dtype->names) != field_count) {
        PyErr_SetString(PyExc_ValueError, "structures must have the same size");
        return NPY_FAIL;
    }


    structsize = sizeof(_field_transfer_data) +
                    field_count * sizeof(_single_field_transfer);
    data = (_field_transfer_data *)PyArray_malloc(structsize);
    if (data == ((void*)0)) {
        PyErr_NoMemory();
        return NPY_FAIL;
    }
    data->base.free = &_field_transfer_data_free;
    data->base.clone = &_field_transfer_data_clone;
    fields = &data->fields;


    for (i = 0; i < field_count; ++i) {
        key = PyTuple_GET_ITEM(dst_dtype->names, i);
        tup = PyDict_GetItem(dst_dtype->fields, key);
        if (!PyArg_ParseTuple(tup, "Oi|O", &dst_fld_dtype,
                                                &dst_offset, &title)) {
            failed = 1;
            break;
        }
        key = PyTuple_GET_ITEM(src_dtype->names, i);
        tup = PyDict_GetItem(src_dtype->fields, key);
        if (!PyArg_ParseTuple(tup, "Oi|O", &src_fld_dtype,
                                                &src_offset, &title)) {
            failed = 1;
            break;
        }

        if (PyArray_GetDTypeTransferFunction(0,
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
            NPY_AUXDATA_FREE(fields[i].data);
        }
        PyArray_free(data);
        return NPY_FAIL;
    }

    data->field_count = field_count;

    *out_stransfer = &_strided_to_strided_field_transfer;
    *out_transferdata = (NpyAuxData *)data;

    return NPY_SUCCEED;
}
