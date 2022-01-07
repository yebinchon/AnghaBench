
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_3__ {int type; int value; int object; } ;
typedef TYPE_1__ npy_index_info ;
typedef int PyObject ;
typedef int PyArrayObject ;







 int NPY_MAXDIMS ;
 int NpySlice_GetIndicesEx (int ,int,int*,int*,int*,int*) ;
 char* PyArray_BYTES (int *) ;
 int PyArray_DESCR (int *) ;
 int* PyArray_DIMS (int *) ;
 int PyArray_FLAGS (int *) ;
 scalar_t__ PyArray_NewFromDescrAndBase (int *,int ,int,int*,int*,char*,int ,int *,int *) ;
 int PyArray_STRIDE (int *,int) ;
 int PyArray_Type ;
 int Py_INCREF (int ) ;
 int * Py_TYPE (int *) ;
 int check_and_adjust_index (int*,int,int,int *) ;

__attribute__((used)) static int
get_view_from_index(PyArrayObject *self, PyArrayObject **view,
                    npy_index_info *indices, int index_num, int ensure_array) {
    npy_intp new_strides[NPY_MAXDIMS];
    npy_intp new_shape[NPY_MAXDIMS];
    int i, j;
    int new_dim = 0;
    int orig_dim = 0;
    char *data_ptr = PyArray_BYTES(self);


    npy_intp start, stop, step, n_steps;

    for (i=0; i < index_num; i++) {
        switch (indices[i].type) {
            case 130:
                if ((check_and_adjust_index(&indices[i].value,
                                PyArray_DIMS(self)[orig_dim], orig_dim,
                                ((void*)0))) < 0) {
                    return -1;
                }
                data_ptr += PyArray_STRIDE(self, orig_dim) * indices[i].value;

                new_dim += 0;
                orig_dim += 1;
                break;
            case 131:
                for (j=0; j < indices[i].value; j++) {
                    new_strides[new_dim] = PyArray_STRIDE(self, orig_dim);
                    new_shape[new_dim] = PyArray_DIMS(self)[orig_dim];
                    new_dim += 1;
                    orig_dim += 1;
                }
                break;
            case 128:
                if (NpySlice_GetIndicesEx(indices[i].object,
                                          PyArray_DIMS(self)[orig_dim],
                                          &start, &stop, &step, &n_steps) < 0) {
                    return -1;
                }
                if (n_steps <= 0) {

                    n_steps = 0;
                    step = 1;
                    start = 0;
                }

                data_ptr += PyArray_STRIDE(self, orig_dim) * start;
                new_strides[new_dim] = PyArray_STRIDE(self, orig_dim) * step;
                new_shape[new_dim] = n_steps;
                new_dim += 1;
                orig_dim += 1;
                break;
            case 129:
                new_strides[new_dim] = 0;
                new_shape[new_dim] = 1;
                new_dim += 1;
                break;

            case 132:
                break;
            default:
                new_dim += 0;
                orig_dim += 1;
                break;
        }
    }


    Py_INCREF(PyArray_DESCR(self));
    *view = (PyArrayObject *)PyArray_NewFromDescrAndBase(
            ensure_array ? &PyArray_Type : Py_TYPE(self),
            PyArray_DESCR(self),
            new_dim, new_shape, new_strides, data_ptr,
            PyArray_FLAGS(self),
            ensure_array ? ((void*)0) : (PyObject *)self,
            (PyObject *)self);
    if (*view == ((void*)0)) {
        return -1;
    }

    return 0;
}
