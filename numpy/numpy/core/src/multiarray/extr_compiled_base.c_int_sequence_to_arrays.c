
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayObject ;


 int PyErr_Format (int ,char*,char*,int) ;
 int PyExc_ValueError ;
 int PySequence_Check (int *) ;
 int * PySequence_GetItem (int *,int) ;
 int PySequence_Size (int *) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 int * astype_anyint (int *) ;

__attribute__((used)) static int int_sequence_to_arrays(PyObject *seq,
                              char *paramname,
                              int count,
                              PyArrayObject **op
                              )
{
    int i;

    if (!PySequence_Check(seq) || PySequence_Size(seq) != count) {
        PyErr_Format(PyExc_ValueError,
                "parameter %s must be a sequence of length %d",
                paramname, count);
        return -1;
    }

    for (i = 0; i < count; ++i) {
        PyObject *item = PySequence_GetItem(seq, i);
        if (item == ((void*)0)) {
            goto fail;
        }
        op[i] = astype_anyint(item);
        Py_DECREF(item);
        if (op[i] == ((void*)0)) {
            goto fail;
        }
    }

    return 0;

fail:
    while (--i >= 0) {
        Py_XDECREF(op[i]);
        op[i] = ((void*)0);
    }
    return -1;
}
