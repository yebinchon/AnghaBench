
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArrayFlagsObject ;


 char* PyBytes_AS_STRING (int *) ;
 scalar_t__ PyBytes_Check (int *) ;
 int PyBytes_GET_SIZE (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_KeyError ;
 int * PyUnicode_AsASCIIString (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int arrayflags_aligned_set (int *,int *) ;
 int arrayflags_updateifcopy_set (int *,int *) ;
 int arrayflags_writeable_set (int *,int *) ;
 int arrayflags_writebackifcopy_set (int *,int *) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
arrayflags_setitem(PyArrayFlagsObject *self, PyObject *ind, PyObject *item)
{
    char *key;
    char buf[16];
    int n;
    if (PyUnicode_Check(ind)) {
        PyObject *tmp_str;
        tmp_str = PyUnicode_AsASCIIString(ind);
        key = PyBytes_AS_STRING(tmp_str);
        n = PyBytes_GET_SIZE(tmp_str);
        if (n > 16) n = 16;
        memcpy(buf, key, n);
        Py_DECREF(tmp_str);
        key = buf;
    }
    else if (PyBytes_Check(ind)) {
        key = PyBytes_AS_STRING(ind);
        n = PyBytes_GET_SIZE(ind);
    }
    else {
        goto fail;
    }
    if (((n==9) && (strncmp(key, "WRITEABLE", n) == 0)) ||
        ((n==1) && (strncmp(key, "W", n) == 0))) {
        return arrayflags_writeable_set(self, item);
    }
    else if (((n==7) && (strncmp(key, "ALIGNED", n) == 0)) ||
             ((n==1) && (strncmp(key, "A", n) == 0))) {
        return arrayflags_aligned_set(self, item);
    }
    else if (((n==12) && (strncmp(key, "UPDATEIFCOPY", n) == 0)) ||
             ((n==1) && (strncmp(key, "U", n) == 0))) {
        return arrayflags_updateifcopy_set(self, item);
    }
    else if (((n==15) && (strncmp(key, "WRITEBACKIFCOPY", n) == 0)) ||
             ((n==1) && (strncmp(key, "X", n) == 0))) {
        return arrayflags_writebackifcopy_set(self, item);
    }

 fail:
    PyErr_SetString(PyExc_KeyError, "Unknown flag");
    return -1;
}
