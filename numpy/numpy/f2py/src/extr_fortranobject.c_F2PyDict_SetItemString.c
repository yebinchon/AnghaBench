
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyDict_SetItemString (int *,char*,int *) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_Print () ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

int
F2PyDict_SetItemString(PyObject *dict, char *name, PyObject *obj)
{
    if (obj==((void*)0)) {
        fprintf(stderr, "Error loading %s\n", name);
        if (PyErr_Occurred()) {
            PyErr_Print();
            PyErr_Clear();
        }
        return -1;
    }
    return PyDict_SetItemString(dict, name, obj);
}
