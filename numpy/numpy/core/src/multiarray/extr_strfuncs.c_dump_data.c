
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int CHECK_MEMORY ;
 int * PyArray_GETITEM (int *,char*) ;
 int * PyObject_Repr (int *) ;
 char* PyString_AsString (int *) ;
 int PyString_Size (int *) ;
 int Py_XDECREF (int *) ;
 int memmove (char*,char*,int) ;

__attribute__((used)) static int
dump_data(char **string, Py_ssize_t *n, Py_ssize_t *max_n, char *data, int nd,
          npy_intp *dimensions, npy_intp *strides, PyArrayObject* self)
{
    PyObject *op = ((void*)0), *sp = ((void*)0);
    char *ostring;
    npy_intp i, N, ret = 0;
    if (nd == 0) {
        if ((op = PyArray_GETITEM(self, data)) == ((void*)0)) {
            return -1;
        }
        sp = PyObject_Repr(op);
        if (sp == ((void*)0)) {
            ret = -1;
            goto end;
        }
        ostring = PyString_AsString(sp);
        N = PyString_Size(sp)*sizeof(char);
        *n += N;
        do { if (extend_str(string, *n, max_n) == ((void*)0)) { ret = -1; goto end; } } while (0);
        memmove(*string + (*n - N), ostring, N);
    }
    else {
        do { if (extend_str(string, *n, max_n) == ((void*)0)) { ret = -1; goto end; } } while (0);
        (*string)[*n] = '[';
        *n += 1;
        for (i = 0; i < dimensions[0]; i++) {
            if (dump_data(string, n, max_n,
                          data + (*strides)*i,
                          nd - 1, dimensions + 1,
                          strides + 1, self) < 0) {
                return -1;
            }
            do { if (extend_str(string, *n, max_n) == ((void*)0)) { ret = -1; goto end; } } while (0);
            if (i < dimensions[0] - 1) {
                (*string)[*n] = ',';
                (*string)[*n+1] = ' ';
                *n += 2;
            }
        }
        do { if (extend_str(string, *n, max_n) == ((void*)0)) { ret = -1; goto end; } } while (0);
        (*string)[*n] = ']';
        *n += 1;
    }



end:
    Py_XDECREF(op);
    Py_XDECREF(sp);
    return ret;
}
