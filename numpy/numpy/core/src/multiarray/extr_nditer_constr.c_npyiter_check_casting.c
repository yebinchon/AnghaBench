
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npyiter_opitflags ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef int NPY_CASTING ;


 int NPY_IT_DBG_PRINT (char*) ;
 int NPY_IT_DBG_PRINT1 (char*,int) ;
 int NPY_OP_ITFLAG_CAST ;
 int NPY_OP_ITFLAG_READ ;
 int NPY_OP_ITFLAG_WRITE ;
 int PyArray_CanCastArrayTo (int *,int *,int ) ;
 int PyArray_CanCastTypeTo (int *,scalar_t__,int ) ;
 scalar_t__ PyArray_DESCR (int *) ;
 int PyArray_EquivTypes (scalar_t__,int *) ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_TypeError ;
 int PyObject_Print (int *,int ,int ) ;
 int * PyObject_Repr (int *) ;
 int PyUString_ConcatAndDel (int **,int *) ;
 int * PyUString_FromFormat (char*,int,...) ;
 int * PyUString_FromString (char*) ;
 int Py_DECREF (int *) ;
 int npyiter_casting_to_string (int ) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static int
npyiter_check_casting(int nop, PyArrayObject **op,
                    PyArray_Descr **op_dtype,
                    NPY_CASTING casting,
                    npyiter_opitflags *op_itflags)
{
    int iop;

    for(iop = 0; iop < nop; ++iop) {
        NPY_IT_DBG_PRINT1("Iterator: Checking casting for operand %d\n",
                            (int)iop);
        if (op[iop] != ((void*)0) && !PyArray_EquivTypes(PyArray_DESCR(op[iop]),
                                                     op_dtype[iop])) {

            if ((op_itflags[iop] & NPY_OP_ITFLAG_READ) &&
                        !PyArray_CanCastArrayTo(op[iop],
                                          op_dtype[iop],
                                          casting)) {
                PyObject *errmsg;
                errmsg = PyUString_FromFormat(
                        "Iterator operand %d dtype could not be cast from ",
                        iop);
                PyUString_ConcatAndDel(&errmsg,
                        PyObject_Repr((PyObject *)PyArray_DESCR(op[iop])));
                PyUString_ConcatAndDel(&errmsg,
                        PyUString_FromString(" to "));
                PyUString_ConcatAndDel(&errmsg,
                        PyObject_Repr((PyObject *)op_dtype[iop]));
                PyUString_ConcatAndDel(&errmsg,
                        PyUString_FromFormat(" according to the rule %s",
                                npyiter_casting_to_string(casting)));
                PyErr_SetObject(PyExc_TypeError, errmsg);
                Py_DECREF(errmsg);
                return 0;
            }

            if ((op_itflags[iop] & NPY_OP_ITFLAG_WRITE) &&
                        !PyArray_CanCastTypeTo(op_dtype[iop],
                                          PyArray_DESCR(op[iop]),
                                          casting)) {
                PyObject *errmsg;
                errmsg = PyUString_FromString(
                        "Iterator requested dtype could not be cast from ");
                PyUString_ConcatAndDel(&errmsg,
                        PyObject_Repr((PyObject *)op_dtype[iop]));
                PyUString_ConcatAndDel(&errmsg,
                        PyUString_FromString(" to "));
                PyUString_ConcatAndDel(&errmsg,
                        PyObject_Repr((PyObject *)PyArray_DESCR(op[iop])));
                PyUString_ConcatAndDel(&errmsg,
                        PyUString_FromFormat(", the operand %d dtype, "
                                "according to the rule %s",
                                iop,
                                npyiter_casting_to_string(casting)));
                PyErr_SetObject(PyExc_TypeError, errmsg);
                Py_DECREF(errmsg);
                return 0;
            }

            NPY_IT_DBG_PRINT("Iterator: Setting NPY_OP_ITFLAG_CAST "
                                "because the types aren't equivalent\n");

            op_itflags[iop] |= NPY_OP_ITFLAG_CAST;
        }
    }

    return 1;
}
