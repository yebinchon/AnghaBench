
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int * base; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayObject_fields ;
typedef int PyArrayObject ;


 scalar_t__ DEPRECATE (char*) ;
 scalar_t__ IsAligned (int *) ;
 int NPY_ARRAY_ALIGNED ;
 int NPY_ARRAY_OWNDATA ;
 int NPY_ARRAY_UPDATEIFCOPY ;
 int NPY_ARRAY_WARN_ON_WRITE ;
 int NPY_ARRAY_WRITEABLE ;
 int NPY_ARRAY_WRITEBACKIFCOPY ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int **,int **) ;
 int * PyArray_BASE (int *) ;
 int PyArray_CHKFLAGS (int *,int ) ;
 int PyArray_CLEARFLAGS (int *,int ) ;
 int PyArray_ENABLEFLAGS (int *,int ) ;
 int PyArray_FLAGS (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 scalar_t__ PyObject_IsTrue (int *) ;
 scalar_t__ PyObject_Not (int *) ;
 int * Py_None ;
 int Py_RETURN_NONE ;
 int Py_XDECREF (int *) ;
 scalar_t__ _IsWriteable (int *) ;

__attribute__((used)) static PyObject *
array_setflags(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"write", "align", "uic", ((void*)0)};
    PyObject *write_flag = Py_None;
    PyObject *align_flag = Py_None;
    PyObject *uic = Py_None;
    int flagback = PyArray_FLAGS(self);

    PyArrayObject_fields *fa = (PyArrayObject_fields *)self;

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|OOO:setflags", kwlist,
                                     &write_flag,
                                     &align_flag,
                                     &uic))
        return ((void*)0);

    if (align_flag != Py_None) {
        if (PyObject_Not(align_flag)) {
            PyArray_CLEARFLAGS(self, NPY_ARRAY_ALIGNED);
        }
        else if (IsAligned(self)) {
            PyArray_ENABLEFLAGS(self, NPY_ARRAY_ALIGNED);
        }
        else {
            PyErr_SetString(PyExc_ValueError,
                            "cannot set aligned flag of mis-"
                            "aligned array to True");
            return ((void*)0);
        }
    }

    if (uic != Py_None) {
        if (PyObject_IsTrue(uic)) {
            fa->flags = flagback;
            PyErr_SetString(PyExc_ValueError,
                            "cannot set WRITEBACKIFCOPY "
                            "flag to True");
            return ((void*)0);
        }
        else {
            PyArray_CLEARFLAGS(self, NPY_ARRAY_WRITEBACKIFCOPY);
            PyArray_CLEARFLAGS(self, NPY_ARRAY_UPDATEIFCOPY);
            Py_XDECREF(fa->base);
            fa->base = ((void*)0);
        }
    }

    if (write_flag != Py_None) {
        if (PyObject_IsTrue(write_flag)) {
            if (_IsWriteable(self)) {






                if ((PyArray_BASE(self) == ((void*)0)) &&
                            !PyArray_CHKFLAGS(self, NPY_ARRAY_OWNDATA) &&
                            !PyArray_CHKFLAGS(self, NPY_ARRAY_WRITEABLE)) {

                    if (DEPRECATE("making a non-writeable array writeable "
                                  "is deprecated for arrays without a base "
                                  "which do not own their data.") < 0) {
                        return ((void*)0);
                    }
                }
                PyArray_ENABLEFLAGS(self, NPY_ARRAY_WRITEABLE);
                PyArray_CLEARFLAGS(self, NPY_ARRAY_WARN_ON_WRITE);
            }
            else {
                fa->flags = flagback;
                PyErr_SetString(PyExc_ValueError,
                                "cannot set WRITEABLE "
                                "flag to True of this "
                                "array");
                return ((void*)0);
            }
        }
        else {
            PyArray_CLEARFLAGS(self, NPY_ARRAY_WRITEABLE);
            PyArray_CLEARFLAGS(self, NPY_ARRAY_WARN_ON_WRITE);
        }
    }
    Py_RETURN_NONE;
}
