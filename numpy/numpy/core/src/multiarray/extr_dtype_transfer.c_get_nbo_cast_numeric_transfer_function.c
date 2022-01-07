
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;
typedef int PyArray_StridedUnaryOp ;
typedef int NpyAuxData ;


 int NPY_FAIL ;
 int NPY_SUCCEED ;
 int * PyArray_GetStridedNumericCastFn (int,int ,int ,int,int) ;
 int PyErr_SetString (int ,char*) ;
 int PyErr_WarnEx (int *,char*,int) ;
 int PyExc_ValueError ;
 int * PyImport_ImportModule (char*) ;
 int * PyObject_GetAttrString (int *,char*) ;
 int PyTypeNum_ISBOOL (int) ;
 scalar_t__ PyTypeNum_ISCOMPLEX (int) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static int
get_nbo_cast_numeric_transfer_function(int aligned,
                            npy_intp src_stride, npy_intp dst_stride,
                            int src_type_num, int dst_type_num,
                            PyArray_StridedUnaryOp **out_stransfer,
                            NpyAuxData **out_transferdata)
{

    if (PyTypeNum_ISCOMPLEX(src_type_num) &&
                    !PyTypeNum_ISCOMPLEX(dst_type_num) &&
                    !PyTypeNum_ISBOOL(dst_type_num)) {
        PyObject *cls = ((void*)0), *obj = ((void*)0);
        int ret;
        obj = PyImport_ImportModule("numpy.core");
        if (obj) {
            cls = PyObject_GetAttrString(obj, "ComplexWarning");
            Py_DECREF(obj);
        }
        ret = PyErr_WarnEx(cls,
                "Casting complex values to real discards "
                "the imaginary part", 1);
        Py_XDECREF(cls);
        if (ret < 0) {
            return NPY_FAIL;
        }
    }

    *out_stransfer = PyArray_GetStridedNumericCastFn(aligned,
                                src_stride, dst_stride,
                                src_type_num, dst_type_num);
    *out_transferdata = ((void*)0);
    if (*out_stransfer == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError,
                "unexpected error in GetStridedNumericCastFn");
        return NPY_FAIL;
    }

    return NPY_SUCCEED;
}
