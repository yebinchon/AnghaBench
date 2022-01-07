
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int npy_intp ;
typedef int npy_int ;
struct TYPE_11__ {int src_offset; int src_itemsize; scalar_t__ dst_offset; int data; int stransfer; } ;
typedef TYPE_2__ _single_field_transfer ;
struct TYPE_10__ {int * clone; int * free; } ;
struct TYPE_12__ {int field_count; TYPE_2__ fields; TYPE_1__ base; } ;
typedef TYPE_3__ _field_transfer_data ;
struct TYPE_13__ {int elsize; int fields; int * names; } ;
typedef int PyObject ;
typedef int PyArray_StridedUnaryOp ;
typedef TYPE_4__ PyArray_Descr ;
typedef int NpyAuxData ;


 int NPY_AUXDATA_FREE (int ) ;
 int NPY_FAIL ;
 scalar_t__ NPY_SUCCEED ;
 int PyArg_ParseTuple (int *,char*,TYPE_4__**,int*,int **) ;
 int PyArray_free (TYPE_3__*) ;
 scalar_t__ PyArray_malloc (int) ;
 scalar_t__ PyDataType_REFCHK (TYPE_4__*) ;
 int * PyDict_GetItem (int ,int *) ;
 int PyErr_NoMemory () ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int _field_transfer_data_clone ;
 int _field_transfer_data_free ;
 int _strided_to_strided_field_transfer ;
 scalar_t__ get_decsrcref_transfer_function (int ,int ,TYPE_4__*,int *,int *,int*) ;

__attribute__((used)) static int
get_decsrcref_fields_transfer_function(int aligned,
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
    names_size = PyTuple_GET_SIZE(src_dtype->names);

    field_count = names_size;
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

    field_count = 0;
    for (i = 0; i < names_size; ++i) {
        key = PyTuple_GET_ITEM(names, i);
        tup = PyDict_GetItem(src_dtype->fields, key);
        if (!PyArg_ParseTuple(tup, "Oi|O", &src_fld_dtype,
                                                &src_offset, &title)) {
            PyArray_free(data);
            return NPY_FAIL;
        }
        if (PyDataType_REFCHK(src_fld_dtype)) {
            if (out_needs_api) {
                *out_needs_api = 1;
            }
            if (get_decsrcref_transfer_function(0,
                                    src_stride,
                                    src_fld_dtype,
                                    &fields[field_count].stransfer,
                                    &fields[field_count].data,
                                    out_needs_api) != NPY_SUCCEED) {
                for (i = field_count-1; i >= 0; --i) {
                    NPY_AUXDATA_FREE(fields[i].data);
                }
                PyArray_free(data);
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
