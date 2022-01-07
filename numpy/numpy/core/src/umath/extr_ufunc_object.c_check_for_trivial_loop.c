
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_3__ {size_t nin; size_t nout; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 scalar_t__ PyArray_CastToType (int *,int *,int ) ;
 int PyArray_DESCR (int *) ;
 size_t PyArray_DIM (int *,int ) ;
 int PyArray_EquivTypes (int *,int ) ;
 int PyArray_ISALIGNED (int *) ;
 int PyArray_NDIM (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static int
check_for_trivial_loop(PyUFuncObject *ufunc,
                        PyArrayObject **op,
                        PyArray_Descr **dtype,
                        npy_intp buffersize)
{
    npy_intp i, nin = ufunc->nin, nop = nin + ufunc->nout;

    for (i = 0; i < nop; ++i) {




        if (op[i] != ((void*)0) &&
                (!PyArray_ISALIGNED(op[i]) ||
                !PyArray_EquivTypes(dtype[i], PyArray_DESCR(op[i]))
                                        )) {





            if (i < nin && (PyArray_NDIM(op[i]) == 0 ||
                    (PyArray_NDIM(op[i]) == 1 &&
                     PyArray_DIM(op[i],0) <= buffersize))) {
                PyArrayObject *tmp;
                Py_INCREF(dtype[i]);
                tmp = (PyArrayObject *)
                            PyArray_CastToType(op[i], dtype[i], 0);
                if (tmp == ((void*)0)) {
                    return -1;
                }
                Py_DECREF(op[i]);
                op[i] = tmp;
            }
            else {
                return 0;
            }
        }
    }

    return 1;
}
