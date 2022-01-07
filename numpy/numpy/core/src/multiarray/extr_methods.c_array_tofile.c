
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_off_t ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef int FILE ;


 int * NpyPath_PathlikeToFspath (int *) ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,char**,char**) ;
 scalar_t__ PyArray_ToFile (int *,int *,char*,char*) ;
 scalar_t__ PyBytes_Check (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_RETURN_NONE ;
 int Py_SETREF (int *,int ) ;
 scalar_t__ npy_PyFile_CloseFile (int *) ;
 int * npy_PyFile_Dup2 (int *,char*,int *) ;
 scalar_t__ npy_PyFile_DupClose2 (int *,int *,int ) ;
 int npy_PyFile_OpenFile (int *,char*) ;

__attribute__((used)) static PyObject *
array_tofile(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int own;
    PyObject *file;
    FILE *fd;
    char *sep = "";
    char *format = "";
    npy_off_t orig_pos = 0;
    static char *kwlist[] = {"file", "sep", "format", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|ss:tofile", kwlist,
                                     &file,
                                     &sep,
                                     &format)) {
        return ((void*)0);
    }

    file = NpyPath_PathlikeToFspath(file);
    if (file == ((void*)0)) {
        return ((void*)0);
    }
    if (PyBytes_Check(file) || PyUnicode_Check(file)) {
        Py_SETREF(file, npy_PyFile_OpenFile(file, "wb"));
        if (file == ((void*)0)) {
            return ((void*)0);
        }
        own = 1;
    }
    else {
        own = 0;
    }

    fd = npy_PyFile_Dup2(file, "wb", &orig_pos);
    if (fd == ((void*)0)) {
        goto fail;
    }
    if (PyArray_ToFile(self, fd, sep, format) < 0) {
        goto fail;
    }
    if (npy_PyFile_DupClose2(file, fd, orig_pos) < 0) {
        goto fail;
    }
    if (own && npy_PyFile_CloseFile(file) < 0) {
        goto fail;
    }
    Py_DECREF(file);
    Py_RETURN_NONE;

fail:
    Py_DECREF(file);
    return ((void*)0);
}
