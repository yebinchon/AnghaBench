
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ npy_off_t ;
typedef scalar_t__ npy_intp ;
struct TYPE_5__ {scalar_t__ elsize; } ;
typedef TYPE_1__ PyArray_Descr ;
typedef int PyArrayObject ;
typedef int FILE ;


 int NPY_BEGIN_ALLOW_THREADS ;
 int NPY_END_ALLOW_THREADS ;
 int PyArray_DATA (int *) ;
 scalar_t__ PyArray_NewFromDescr (int *,TYPE_1__*,int,scalar_t__*,int *,int *,int ,int *) ;
 int PyArray_Type ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_IOError ;
 int Py_DECREF (TYPE_1__*) ;
 int SEEK_END ;
 int SEEK_SET ;
 size_t fread (int ,int,scalar_t__,int *) ;
 scalar_t__ npy_fseek (int *,scalar_t__,int ) ;
 scalar_t__ npy_ftell (int *) ;

__attribute__((used)) static PyArrayObject *
array_fromfile_binary(FILE *fp, PyArray_Descr *dtype, npy_intp num, size_t *nread)
{
    PyArrayObject *r;
    npy_off_t start, numbytes;
    int elsize;

    if (num < 0) {
        int fail = 0;
        start = npy_ftell(fp);
        if (start < 0) {
            fail = 1;
        }
        if (npy_fseek(fp, 0, SEEK_END) < 0) {
            fail = 1;
        }
        numbytes = npy_ftell(fp);
        if (numbytes < 0) {
            fail = 1;
        }
        numbytes -= start;
        if (npy_fseek(fp, start, SEEK_SET) < 0) {
            fail = 1;
        }
        if (fail) {
            PyErr_SetString(PyExc_IOError,
                            "could not seek in file");
            Py_DECREF(dtype);
            return ((void*)0);
        }
        num = numbytes / dtype->elsize;
    }





    elsize = dtype->elsize;

    r = (PyArrayObject *)PyArray_NewFromDescr(&PyArray_Type, dtype, 1, &num,
                                              ((void*)0), ((void*)0), 0, ((void*)0));
    if (r == ((void*)0)) {
        return ((void*)0);
    }

    NPY_BEGIN_ALLOW_THREADS;
    *nread = fread(PyArray_DATA(r), elsize, num, fp);
    NPY_END_ALLOW_THREADS;
    return r;
}
