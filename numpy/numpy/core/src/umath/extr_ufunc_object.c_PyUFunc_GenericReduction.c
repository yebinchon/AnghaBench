
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_68__ TYPE_2__ ;
typedef struct TYPE_67__ TYPE_1__ ;


struct TYPE_68__ {int type_num; scalar_t__ elsize; } ;
struct TYPE_67__ {int nin; int nout; int name; scalar_t__ core_enabled; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef TYPE_2__ PyObject ;
typedef TYPE_2__ PyArray_Descr ;
typedef TYPE_2__ PyArrayObject ;


 int Generic ;
 int NPY_ARRAY_CARRAY ;
 int NPY_INTP ;
 int NPY_LONG ;
 int NPY_MAXDIMS ;
 int NPY_ULONG ;
 int PyArg_ParseTupleAndKeywords (TYPE_2__*,TYPE_2__*,char*,char**,TYPE_2__**,TYPE_2__**,TYPE_2__**,TYPE_2__**,TYPE_2__**,TYPE_2__**,...) ;
 int PyArray_Check (TYPE_2__*) ;
 TYPE_2__* PyArray_DESCR (TYPE_2__*) ;
 int PyArray_DescrConverter2 ;
 TYPE_2__* PyArray_DescrFromType (int) ;
 scalar_t__ PyArray_FromAny (TYPE_2__*,TYPE_2__*,int,int,int ,TYPE_2__*) ;
 scalar_t__ PyArray_ISFLEXIBLE (TYPE_2__*) ;
 int PyArray_IsScalar (TYPE_2__*,int ) ;
 int PyArray_NDIM (TYPE_2__*) ;
 int PyArray_OutputConverter ;
 int PyArray_PyIntAsInt (TYPE_2__*) ;
 int PyArray_TYPE (TYPE_2__*) ;
 int PyCallable_Check (TYPE_2__*) ;
 TYPE_2__* PyDict_GetItem (TYPE_2__*,int ) ;
 int PyDict_SetItem (TYPE_2__*,int ,TYPE_2__*) ;
 int PyErr_Clear () ;
 int PyErr_Format (int ,char*,...) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 TYPE_2__* PyObject_GetAttr (TYPE_2__*,int ) ;
 scalar_t__ PyTuple_Check (TYPE_2__*) ;
 scalar_t__ PyTuple_CheckExact (TYPE_2__*) ;
 TYPE_2__* PyTuple_GET_ITEM (TYPE_2__*,int) ;
 int PyTuple_GET_SIZE (TYPE_2__*) ;
 int PyTuple_Size (TYPE_2__*) ;
 scalar_t__ PyTypeNum_ISBOOL (int) ;
 scalar_t__ PyTypeNum_ISFLEXIBLE (int ) ;
 scalar_t__ PyTypeNum_ISINTEGER (int) ;
 scalar_t__ PyTypeNum_ISUNSIGNED (int) ;
 scalar_t__ PyUFunc_Accumulate (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int ) ;
 TYPE_2__* PyUFunc_Reduce (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int*,TYPE_2__*,int,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ PyUFunc_Reduceat (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int,int ) ;
 TYPE_2__* Py_BuildValue (char*,TYPE_1__*,TYPE_2__*,int ) ;
 int Py_DECREF (TYPE_2__*) ;
 int Py_INCREF (TYPE_2__*) ;
 TYPE_2__* Py_None ;
 scalar_t__ Py_TYPE (TYPE_2__*) ;
 int Py_XDECREF (TYPE_2__*) ;



 TYPE_2__* _apply_array_wrap (TYPE_2__*,TYPE_2__*,int *) ;
 int _wheremask_converter ;
 scalar_t__ check_and_adjust_axis (int*,int) ;
 scalar_t__ error_converting (int) ;
 int npy_um_str_array_wrap ;
 int npy_um_str_out ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static PyObject *
PyUFunc_GenericReduction(PyUFuncObject *ufunc, PyObject *args,
                         PyObject *kwds, int operation)
{
    int i, naxes=0, ndim;
    int axes[NPY_MAXDIMS];
    PyObject *axes_in = ((void*)0);
    PyArrayObject *mp = ((void*)0), *wheremask = ((void*)0), *ret = ((void*)0);
    PyObject *op;
    PyObject *obj_ind, *context;
    PyArrayObject *indices = ((void*)0);
    PyArray_Descr *otype = ((void*)0);
    PyArrayObject *out = ((void*)0);
    int keepdims = 0;
    PyObject *initial = ((void*)0);
    static char *reduce_kwlist[] = {
        "array", "axis", "dtype", "out", "keepdims", "initial", "where", ((void*)0)};
    static char *accumulate_kwlist[] = {
            "array", "axis", "dtype", "out", ((void*)0)};
    static char *reduceat_kwlist[] = {
            "array", "indices", "axis", "dtype", "out", ((void*)0)};

    static char *_reduce_type[] = {"reduce", "accumulate", "reduceat", ((void*)0)};

    if (ufunc == ((void*)0)) {
        PyErr_SetString(PyExc_ValueError, "function not supported");
        return ((void*)0);
    }
    if (ufunc->core_enabled) {
        PyErr_Format(PyExc_RuntimeError,
                     "Reduction not defined on ufunc with signature");
        return ((void*)0);
    }
    if (ufunc->nin != 2) {
        PyErr_Format(PyExc_ValueError,
                     "%s only supported for binary functions",
                     _reduce_type[operation]);
        return ((void*)0);
    }
    if (ufunc->nout != 1) {
        PyErr_Format(PyExc_ValueError,
                     "%s only supported for functions "
                     "returning a single value",
                     _reduce_type[operation]);
        return ((void*)0);
    }

    if (kwds != ((void*)0)) {
        PyObject *out_obj = PyDict_GetItem(kwds, npy_um_str_out);
        if (out_obj != ((void*)0) && PyTuple_CheckExact(out_obj)) {
            if (PyTuple_GET_SIZE(out_obj) != 1) {
                PyErr_SetString(PyExc_ValueError,
                                "The 'out' tuple must have exactly one entry");
                return ((void*)0);
            }
            out_obj = PyTuple_GET_ITEM(out_obj, 0);
            PyDict_SetItem(kwds, npy_um_str_out, out_obj);
        }
    }

    if (operation == 128) {
        PyArray_Descr *indtype;
        indtype = PyArray_DescrFromType(NPY_INTP);
        if (!PyArg_ParseTupleAndKeywords(args, kwds, "OO|OO&O&:reduceat", reduceat_kwlist,
                                         &op,
                                         &obj_ind,
                                         &axes_in,
                                         PyArray_DescrConverter2, &otype,
                                         PyArray_OutputConverter, &out)) {
            goto fail;
        }
        indices = (PyArrayObject *)PyArray_FromAny(obj_ind, indtype,
                                           1, 1, NPY_ARRAY_CARRAY, ((void*)0));
        if (indices == ((void*)0)) {
            goto fail;
        }
    }
    else if (operation == 130) {
        if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|OO&O&:accumulate",
                                         accumulate_kwlist,
                                         &op,
                                         &axes_in,
                                         PyArray_DescrConverter2, &otype,
                                         PyArray_OutputConverter, &out)) {
            goto fail;
        }
    }
    else {
        if (!PyArg_ParseTupleAndKeywords(args, kwds, "O|OO&O&iOO&:reduce",
                                         reduce_kwlist,
                                         &op,
                                         &axes_in,
                                         PyArray_DescrConverter2, &otype,
                                         PyArray_OutputConverter, &out,
                                         &keepdims, &initial,
                                         _wheremask_converter, &wheremask)) {
            goto fail;
        }
    }

    if (!PyArray_Check(op) && !PyArray_IsScalar(op, Generic)) {
        context = Py_BuildValue("O(O)i", ufunc, op, 0);
    }
    else {
        context = ((void*)0);
    }
    mp = (PyArrayObject *)PyArray_FromAny(op, ((void*)0), 0, 0, 0, context);
    Py_XDECREF(context);
    if (mp == ((void*)0)) {
        goto fail;
    }

    ndim = PyArray_NDIM(mp);


    if (PyArray_ISFLEXIBLE(mp) ||
        (otype && PyTypeNum_ISFLEXIBLE(otype->type_num))) {
        PyErr_Format(PyExc_TypeError,
                     "cannot perform %s with flexible type",
                     _reduce_type[operation]);
        goto fail;
    }


    if (axes_in == ((void*)0)) {

        if (ndim == 0) {
            naxes = 0;
        }
        else {
            naxes = 1;
            axes[0] = 0;
        }
    }
    else if (axes_in == Py_None) {

        naxes = ndim;
        for (i = 0; i < naxes; ++i) {
            axes[i] = i;
        }
    }
    else if (PyTuple_Check(axes_in)) {
        naxes = PyTuple_Size(axes_in);
        if (naxes < 0 || naxes > NPY_MAXDIMS) {
            PyErr_SetString(PyExc_ValueError,
                    "too many values for 'axis'");
            goto fail;
        }
        for (i = 0; i < naxes; ++i) {
            PyObject *tmp = PyTuple_GET_ITEM(axes_in, i);
            int axis = PyArray_PyIntAsInt(tmp);
            if (error_converting(axis)) {
                goto fail;
            }
            if (check_and_adjust_axis(&axis, ndim) < 0) {
                goto fail;
            }
            axes[i] = (int)axis;
        }
    }
    else {

        int axis = PyArray_PyIntAsInt(axes_in);

        if (error_converting(axis)) {
            goto fail;
        }





        if (ndim == 0 && (axis == 0 || axis == -1)) {
            naxes = 0;
        }
        else if (check_and_adjust_axis(&axis, ndim) < 0) {
            goto fail;
        }
        else {
            axes[0] = (int)axis;
            naxes = 1;
        }
    }





    if (otype == ((void*)0) && out != ((void*)0)) {
        otype = PyArray_DESCR(out);
        Py_INCREF(otype);
    }
    if (otype == ((void*)0)) {




        int typenum = PyArray_TYPE(mp);
        if ((PyTypeNum_ISBOOL(typenum) || PyTypeNum_ISINTEGER(typenum))
            && ((strcmp(ufunc->name,"add") == 0)
                || (strcmp(ufunc->name,"multiply") == 0))) {
            if (PyTypeNum_ISBOOL(typenum)) {
                typenum = NPY_LONG;
            }
            else if ((size_t)PyArray_DESCR(mp)->elsize < sizeof(long)) {
                if (PyTypeNum_ISUNSIGNED(typenum)) {
                    typenum = NPY_ULONG;
                }
                else {
                    typenum = NPY_LONG;
                }
            }
        }
        otype = PyArray_DescrFromType(typenum);
    }


    switch(operation) {
    case 129:
        ret = PyUFunc_Reduce(ufunc, mp, out, naxes, axes,
                             otype, keepdims, initial, wheremask);
        Py_XDECREF(wheremask);
        break;
    case 130:
        if (ndim == 0) {
            PyErr_SetString(PyExc_TypeError, "cannot accumulate on a scalar");
            goto fail;
        }
        if (naxes != 1) {
            PyErr_SetString(PyExc_ValueError,
                        "accumulate does not allow multiple axes");
            goto fail;
        }
        ret = (PyArrayObject *)PyUFunc_Accumulate(ufunc, mp, out, axes[0],
                                                  otype->type_num);
        break;
    case 128:
        if (ndim == 0) {
            PyErr_SetString(PyExc_TypeError, "cannot reduceat on a scalar");
            goto fail;
        }
        if (naxes != 1) {
            PyErr_SetString(PyExc_ValueError,
                        "reduceat does not allow multiple axes");
            goto fail;
        }
        ret = (PyArrayObject *)PyUFunc_Reduceat(ufunc, mp, indices, out,
                                            axes[0], otype->type_num);
        Py_DECREF(indices);
        break;
    }
    Py_DECREF(mp);
    Py_DECREF(otype);

    if (ret == ((void*)0)) {
        return ((void*)0);
    }


    {



        PyObject *wrap;
        if (out != ((void*)0)) {
            wrap = Py_None;
            Py_INCREF(wrap);
        }
        else if (Py_TYPE(op) != Py_TYPE(ret)) {
            wrap = PyObject_GetAttr(op, npy_um_str_array_wrap);
            if (wrap == ((void*)0)) {
                PyErr_Clear();
            }
            else if (!PyCallable_Check(wrap)) {
                Py_DECREF(wrap);
                wrap = ((void*)0);
            }
        }
        else {
            wrap = ((void*)0);
        }
        return _apply_array_wrap(wrap, ret, ((void*)0));
    }

fail:
    Py_XDECREF(otype);
    Py_XDECREF(mp);
    Py_XDECREF(wheremask);
    return ((void*)0);
}
