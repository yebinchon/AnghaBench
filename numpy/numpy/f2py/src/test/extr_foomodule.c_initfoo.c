
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef int PyObject ;


 int PyDict_SetItemString (int *,char*,int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * PyFortranObject_New (int ,int ) ;
 int * PyFortranObject_NewAsAttr (TYPE_1__*) ;
 int * PyModule_GetDict (int *) ;
 int * PyString_FromString (char*) ;
 int Py_DECREF (int *) ;
 int Py_FatalError (char*) ;
 int * Py_InitModule (char*,int ) ;
 int f2py_foodata_def ;
 int f2py_init_foodata ;
 int f2py_init_mod ;
 int f2py_mod_def ;
 TYPE_1__* f2py_routines_def ;
 int foo_module_methods ;
 int import_array () ;

void initfoo() {
    int i;
    PyObject *m, *d, *s, *tmp;
    import_array();

    m = Py_InitModule("foo", foo_module_methods);

    d = PyModule_GetDict(m);
    s = PyString_FromString("This module 'foo' demonstrates the usage of fortranobject.");
    PyDict_SetItemString(d, "__doc__", s);


    tmp = PyFortranObject_New(f2py_mod_def,f2py_init_mod);
    PyDict_SetItemString(d, "mod", tmp);
    Py_DECREF(tmp);
    tmp = PyFortranObject_New(f2py_foodata_def,f2py_init_foodata);
    PyDict_SetItemString(d, "foodata", tmp);
    Py_DECREF(tmp);
    for(i=0;f2py_routines_def[i].name!=((void*)0);i++) {
        tmp = PyFortranObject_NewAsAttr(&f2py_routines_def[i]);
        PyDict_SetItemString(d, f2py_routines_def[i].name, tmp);
        Py_DECREF(tmp);
    }

    Py_DECREF(s);

    if (PyErr_Occurred())
        Py_FatalError("can't initialize module foo");
}
