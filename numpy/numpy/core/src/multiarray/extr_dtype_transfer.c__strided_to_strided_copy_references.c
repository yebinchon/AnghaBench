
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;
typedef int PyObject ;
typedef int NpyAuxData ;


 int NPY_COPY_PYOBJECT_PTR (char*,char*) ;
 int NPY_DT_DBG_REFTRACE (char*,int *) ;
 int Py_XDECREF (int *) ;
 int Py_XINCREF (int *) ;

__attribute__((used)) static void
_strided_to_strided_copy_references(char *dst, npy_intp dst_stride,
                        char *src, npy_intp src_stride,
                        npy_intp N, npy_intp src_itemsize,
                        NpyAuxData *data)
{
    PyObject *src_ref = ((void*)0), *dst_ref = ((void*)0);
    while (N > 0) {
        NPY_COPY_PYOBJECT_PTR(&src_ref, src);
        NPY_COPY_PYOBJECT_PTR(&dst_ref, dst);


        NPY_DT_DBG_REFTRACE("copy src ref", src_ref);
        NPY_COPY_PYOBJECT_PTR(dst, &src_ref);

        Py_XINCREF(src_ref);

        NPY_DT_DBG_REFTRACE("dec dst ref", dst_ref);
        Py_XDECREF(dst_ref);

        src += src_stride;
        dst += dst_stride;
        --N;
    }
}
