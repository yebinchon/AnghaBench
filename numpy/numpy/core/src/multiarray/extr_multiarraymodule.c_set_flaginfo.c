
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int A ;
 int ALIGNED ;
 int C ;
 int CONTIGUOUS ;
 int C_CONTIGUOUS ;
 int F ;
 int FORTRAN ;
 int F_CONTIGUOUS ;
 int NPY_ARRAY_ALIGNED ;
 int NPY_ARRAY_C_CONTIGUOUS ;
 int NPY_ARRAY_F_CONTIGUOUS ;
 int NPY_ARRAY_OWNDATA ;
 int NPY_ARRAY_UPDATEIFCOPY ;
 int NPY_ARRAY_WRITEABLE ;
 int NPY_ARRAY_WRITEBACKIFCOPY ;
 int O ;
 int OWNDATA ;
 int * PyDict_New () ;
 int PyDict_SetItemString (int *,char*,int *) ;
 int Py_DECREF (int *) ;
 int U ;
 int UPDATEIFCOPY ;
 int W ;
 int WRITEABLE ;
 int WRITEBACKIFCOPY ;
 int X ;
 int _addnew (int ,int ,int ) ;
 int _addone (int ,int ) ;

__attribute__((used)) static void
set_flaginfo(PyObject *d)
{
    PyObject *s;
    PyObject *newd;

    newd = PyDict_New();
    PyDict_SetItemString(newd, "OWNDATA", s=PyInt_FromLong(NPY_ARRAY_OWNDATA)); Py_DECREF(s); PyDict_SetItemString(newd, "O", s=PyInt_FromLong(NPY_ARRAY_OWNDATA)); Py_DECREF(s);
    PyDict_SetItemString(newd, "FORTRAN", s=PyInt_FromLong(NPY_ARRAY_F_CONTIGUOUS)); Py_DECREF(s); PyDict_SetItemString(newd, "F", s=PyInt_FromLong(NPY_ARRAY_F_CONTIGUOUS)); Py_DECREF(s);
    PyDict_SetItemString(newd, "CONTIGUOUS", s=PyInt_FromLong(NPY_ARRAY_C_CONTIGUOUS)); Py_DECREF(s); PyDict_SetItemString(newd, "C", s=PyInt_FromLong(NPY_ARRAY_C_CONTIGUOUS)); Py_DECREF(s);
    PyDict_SetItemString(newd, "ALIGNED", s=PyInt_FromLong(NPY_ARRAY_ALIGNED)); Py_DECREF(s); PyDict_SetItemString(newd, "A", s=PyInt_FromLong(NPY_ARRAY_ALIGNED)); Py_DECREF(s);
    PyDict_SetItemString(newd, "UPDATEIFCOPY", s=PyInt_FromLong(NPY_ARRAY_UPDATEIFCOPY)); Py_DECREF(s); PyDict_SetItemString(newd, "U", s=PyInt_FromLong(NPY_ARRAY_UPDATEIFCOPY)); Py_DECREF(s);
    PyDict_SetItemString(newd, "WRITEBACKIFCOPY", s=PyInt_FromLong(NPY_ARRAY_WRITEBACKIFCOPY)); Py_DECREF(s); PyDict_SetItemString(newd, "X", s=PyInt_FromLong(NPY_ARRAY_WRITEBACKIFCOPY)); Py_DECREF(s);
    PyDict_SetItemString(newd, "WRITEABLE", s=PyInt_FromLong(NPY_ARRAY_WRITEABLE)); Py_DECREF(s); PyDict_SetItemString(newd, "W", s=PyInt_FromLong(NPY_ARRAY_WRITEABLE)); Py_DECREF(s);
    PyDict_SetItemString(newd, "C_CONTIGUOUS", s=PyInt_FromLong(NPY_ARRAY_C_CONTIGUOUS)); Py_DECREF(s);
    PyDict_SetItemString(newd, "F_CONTIGUOUS", s=PyInt_FromLong(NPY_ARRAY_F_CONTIGUOUS)); Py_DECREF(s);




    PyDict_SetItemString(d, "_flagdict", newd);
    Py_DECREF(newd);
    return;
}
