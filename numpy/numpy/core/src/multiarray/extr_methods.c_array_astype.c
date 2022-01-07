
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef scalar_t__ NPY_ORDER ;
typedef int NPY_CASTING ;


 scalar_t__ NPY_ANYORDER ;
 scalar_t__ NPY_CORDER ;
 scalar_t__ NPY_FORTRANORDER ;
 scalar_t__ NPY_KEEPORDER ;
 int NPY_UNSAFE_CASTING ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int ,int **,int ,scalar_t__*,int ,int *,int*,int*) ;
 int * PyArray_AdaptFlexibleDType (int *,scalar_t__,int *) ;
 scalar_t__ PyArray_CanCastArrayTo (int *,int *,int ) ;
 int PyArray_CastingConverter ;
 scalar_t__ PyArray_CheckExact (int *) ;
 scalar_t__ PyArray_CopyInto (int *,int *) ;
 scalar_t__ PyArray_DESCR (int *) ;
 int PyArray_DescrConverter ;
 scalar_t__ PyArray_EquivTypes (int *,scalar_t__) ;
 scalar_t__ PyArray_IS_C_CONTIGUOUS (int *) ;
 scalar_t__ PyArray_IS_F_CONTIGUOUS (int *) ;
 scalar_t__ PyArray_NewLikeArray (int *,scalar_t__,int *,int) ;
 int PyArray_OrderConverter ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_TypeError ;
 int * PyObject_Repr (int *) ;
 int PyUString_ConcatAndDel (int **,int *) ;
 int * PyUString_FromFormat (char*,int ) ;
 int * PyUString_FromString (char*) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 int npy_casting_to_string (int ) ;

__attribute__((used)) static PyObject *
array_astype(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"dtype", "order", "casting",
                             "subok", "copy", ((void*)0)};
    PyArray_Descr *dtype = ((void*)0);




    NPY_CASTING casting = NPY_UNSAFE_CASTING;
    NPY_ORDER order = NPY_KEEPORDER;
    int forcecopy = 1, subok = 1;

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "O&|O&O&ii:astype", kwlist,
                            PyArray_DescrConverter, &dtype,
                            PyArray_OrderConverter, &order,
                            PyArray_CastingConverter, &casting,
                            &subok,
                            &forcecopy)) {
        Py_XDECREF(dtype);
        return ((void*)0);
    }






    if (!forcecopy && (order == NPY_KEEPORDER ||
                       (order == NPY_ANYORDER &&
                            (PyArray_IS_C_CONTIGUOUS(self) ||
                            PyArray_IS_F_CONTIGUOUS(self))) ||
                       (order == NPY_CORDER &&
                            PyArray_IS_C_CONTIGUOUS(self)) ||
                       (order == NPY_FORTRANORDER &&
                            PyArray_IS_F_CONTIGUOUS(self))) &&
                    (subok || PyArray_CheckExact(self)) &&
                    PyArray_EquivTypes(dtype, PyArray_DESCR(self))) {
        Py_DECREF(dtype);
        Py_INCREF(self);
        return (PyObject *)self;
    }
    else if (PyArray_CanCastArrayTo(self, dtype, casting)) {
        PyArrayObject *ret;


        dtype = PyArray_AdaptFlexibleDType((PyObject *)self,
                                           PyArray_DESCR(self), dtype);
        if (dtype == ((void*)0)) {
            return ((void*)0);
        }


        ret = (PyArrayObject *)PyArray_NewLikeArray(
                                    self, order, dtype, subok);
        if (ret == ((void*)0)) {
            return ((void*)0);
        }

        if (PyArray_CopyInto(ret, self) < 0) {
            Py_DECREF(ret);
            return ((void*)0);
        }

        return (PyObject *)ret;
    }
    else {
        PyObject *errmsg;
        errmsg = PyUString_FromString("Cannot cast array from ");
        PyUString_ConcatAndDel(&errmsg,
                PyObject_Repr((PyObject *)PyArray_DESCR(self)));
        PyUString_ConcatAndDel(&errmsg,
                PyUString_FromString(" to "));
        PyUString_ConcatAndDel(&errmsg,
                PyObject_Repr((PyObject *)dtype));
        PyUString_ConcatAndDel(&errmsg,
                PyUString_FromFormat(" according to the rule %s",
                        npy_casting_to_string(casting)));
        PyErr_SetObject(PyExc_TypeError, errmsg);
        Py_DECREF(errmsg);
        Py_DECREF(dtype);
        return ((void*)0);
    }
}
