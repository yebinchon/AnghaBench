
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_5__ {int type; int value; scalar_t__ object; } ;
typedef TYPE_1__ npy_index_info ;
struct TYPE_6__ {int nd_fancy; int* dimensions; int consec; int* fancy_dims; int* iteraxes; int * subspace; scalar_t__* fancy_strides; } ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef TYPE_2__ PyArrayMapIterObject ;


 int HAS_0D_BOOL ;
 int HAS_ELLIPSIS ;
 int HAS_FANCY ;
 int HAS_INTEGER ;
 int HAS_NEWAXIS ;
 void* PyArray_DIM (int *,int) ;
 int PyArray_NDIM (int *) ;
 int PyArray_SHAPE (int *) ;
 scalar_t__ PyArray_STRIDE (int *,int) ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_IndexError ;
 int PyUString_ConcatAndDel (int **,int *) ;
 int * PyUString_FromString (char*) ;
 int Py_DECREF (int *) ;
 int * convert_shape_to_string (int,int ,char*) ;

__attribute__((used)) static int
mapiter_fill_info(PyArrayMapIterObject *mit, npy_index_info *indices,
                  int index_num, PyArrayObject *arr)
{
    int j = 0, i;
    int curr_dim = 0;

    int result_dim = 0;

    int consec_status = -1;
    int axis, broadcast_axis;
    npy_intp dimension;
    PyObject *errmsg, *tmp;

    for (i = 0; i < mit->nd_fancy; i++) {
        mit->dimensions[i] = 1;
    }

    mit->consec = 0;
    for (i = 0; i < index_num; i++) {

        if (indices[i].type & (HAS_FANCY | HAS_INTEGER)) {

            if (consec_status == -1) {
                mit->consec = result_dim;
                consec_status = 0;
            }

            else if (consec_status == 1) {
                consec_status = 2;
                mit->consec = 0;
            }
        }
        else {

            if (consec_status == 0) {
                consec_status = 1;
            }
        }


        if (indices[i].type == HAS_FANCY) {
            mit->fancy_strides[j] = PyArray_STRIDE(arr, curr_dim);
            mit->fancy_dims[j] = PyArray_DIM(arr, curr_dim);
            mit->iteraxes[j++] = curr_dim++;


            broadcast_axis = mit->nd_fancy;

            for (axis = PyArray_NDIM((PyArrayObject *)indices[i].object) - 1;
                        axis >= 0; axis--) {
                broadcast_axis--;
                dimension = PyArray_DIM((PyArrayObject *)indices[i].object, axis);


                if (dimension != 1) {
                    if (dimension != mit->dimensions[broadcast_axis]) {
                        if (mit->dimensions[broadcast_axis] != 1) {
                            goto broadcast_error;
                        }
                        mit->dimensions[broadcast_axis] = dimension;
                    }
                }
            }
        }
        else if (indices[i].type == HAS_0D_BOOL) {
            mit->fancy_strides[j] = 0;
            mit->fancy_dims[j] = 1;

            mit->iteraxes[j++] = -1;
            if ((indices[i].value == 0) &&
                    (mit->dimensions[mit->nd_fancy - 1]) > 1) {
                goto broadcast_error;
            }
            mit->dimensions[mit->nd_fancy-1] *= indices[i].value;
        }


        else if (indices[i].type == HAS_ELLIPSIS) {
            curr_dim += (int)indices[i].value;
            result_dim += (int)indices[i].value;
        }
        else if (indices[i].type != HAS_NEWAXIS){
            curr_dim += 1;
            result_dim += 1;
        }
        else {
            result_dim += 1;
        }
    }


    if (mit->subspace) {
        for (i = 0; i < PyArray_NDIM(mit->subspace); i++) {
            mit->dimensions[mit->nd_fancy + i] = PyArray_DIM(mit->subspace, i);
        }
    }

    return 0;

  broadcast_error:




    errmsg = PyUString_FromString("shape mismatch: indexing arrays could not "
                                  "be broadcast together with shapes ");
    if (errmsg == ((void*)0)) {
        return -1;
    }

    for (i = 0; i < index_num; i++) {
        if (!(indices[i].type & HAS_FANCY)) {
            continue;
        }
        tmp = convert_shape_to_string(
                    PyArray_NDIM((PyArrayObject *)indices[i].object),
                    PyArray_SHAPE((PyArrayObject *)indices[i].object),
                    " ");
        if (tmp == ((void*)0)) {
            return -1;
        }
        PyUString_ConcatAndDel(&errmsg, tmp);
        if (errmsg == ((void*)0)) {
            return -1;
        }
    }

    PyErr_SetObject(PyExc_IndexError, errmsg);
    Py_DECREF(errmsg);
    return -1;
}
