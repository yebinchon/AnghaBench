
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;
typedef int Py_ssize_t ;
typedef int PyObject ;


 int NPY_ITER_BUFFERED ;
 int NPY_ITER_COMMON_DTYPE ;
 int NPY_ITER_COPY_IF_OVERLAP ;
 int NPY_ITER_C_INDEX ;
 int NPY_ITER_DELAY_BUFALLOC ;
 int NPY_ITER_EXTERNAL_LOOP ;
 int NPY_ITER_F_INDEX ;
 int NPY_ITER_GROWINNER ;
 int NPY_ITER_MULTI_INDEX ;
 int NPY_ITER_RANGED ;
 int NPY_ITER_REDUCE_OK ;
 int NPY_ITER_REFS_OK ;
 int NPY_ITER_ZEROSIZE_OK ;
 scalar_t__ PyBytes_AsStringAndSize (int *,char**,int*) ;
 int PyErr_Format (int ,char*,char*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int PyList_Check (int *) ;
 int * PySequence_GetItem (int *,int) ;
 int PySequence_Size (int *) ;
 int PyTuple_Check (int *) ;
 int * PyUnicode_AsASCIIString (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
NpyIter_GlobalFlagsConverter(PyObject *flags_in, npy_uint32 *flags)
{
    npy_uint32 tmpflags = 0;
    int iflags, nflags;

    PyObject *f;
    char *str = ((void*)0);
    Py_ssize_t length = 0;
    npy_uint32 flag;

    if (flags_in == ((void*)0) || flags_in == Py_None) {
        return 1;
    }

    if (!PyTuple_Check(flags_in) && !PyList_Check(flags_in)) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator global flags must be a list or tuple of strings");
        return 0;
    }

    nflags = PySequence_Size(flags_in);

    for (iflags = 0; iflags < nflags; ++iflags) {
        f = PySequence_GetItem(flags_in, iflags);
        if (f == ((void*)0)) {
            return 0;
        }

        if (PyUnicode_Check(f)) {

            PyObject *f_str;
            f_str = PyUnicode_AsASCIIString(f);
            if (f_str == ((void*)0)) {
                Py_DECREF(f);
                return 0;
            }
            Py_DECREF(f);
            f = f_str;
        }

        if (PyBytes_AsStringAndSize(f, &str, &length) < 0) {
            Py_DECREF(f);
            return 0;
        }

        flag = 0;
        switch (str[0]) {
            case 'b':
                if (strcmp(str, "buffered") == 0) {
                    flag = NPY_ITER_BUFFERED;
                }
                break;
            case 'c':
                if (length >= 6) switch (str[5]) {
                    case 'e':
                        if (strcmp(str, "c_index") == 0) {
                            flag = NPY_ITER_C_INDEX;
                        }
                        break;
                    case 'i':
                        if (strcmp(str, "copy_if_overlap") == 0) {
                            flag = NPY_ITER_COPY_IF_OVERLAP;
                        }
                        break;
                    case 'n':
                        if (strcmp(str, "common_dtype") == 0) {
                            flag = NPY_ITER_COMMON_DTYPE;
                        }
                        break;
                }
                break;
            case 'd':
                if (strcmp(str, "delay_bufalloc") == 0) {
                    flag = NPY_ITER_DELAY_BUFALLOC;
                }
                break;
            case 'e':
                if (strcmp(str, "external_loop") == 0) {
                    flag = NPY_ITER_EXTERNAL_LOOP;
                }
                break;
            case 'f':
                if (strcmp(str, "f_index") == 0) {
                    flag = NPY_ITER_F_INDEX;
                }
                break;
            case 'g':




                if (strcmp(str, "grow_inner") == 0 ||
                            strcmp(str, "growinner") == 0) {
                    flag = NPY_ITER_GROWINNER;
                }
                break;
            case 'm':
                if (strcmp(str, "multi_index") == 0) {
                    flag = NPY_ITER_MULTI_INDEX;
                }
                break;
            case 'r':
                if (strcmp(str, "ranged") == 0) {
                    flag = NPY_ITER_RANGED;
                }
                else if (strcmp(str, "refs_ok") == 0) {
                    flag = NPY_ITER_REFS_OK;
                }
                else if (strcmp(str, "reduce_ok") == 0) {
                    flag = NPY_ITER_REDUCE_OK;
                }
                break;
            case 'z':
                if (strcmp(str, "zerosize_ok") == 0) {
                    flag = NPY_ITER_ZEROSIZE_OK;
                }
                break;
        }
        if (flag == 0) {
            PyErr_Format(PyExc_ValueError,
                    "Unexpected iterator global flag \"%s\"", str);
            Py_DECREF(f);
            return 0;
        }
        else {
            tmpflags |= flag;
        }
        Py_DECREF(f);
    }

    *flags |= tmpflags;
    return 1;
}
