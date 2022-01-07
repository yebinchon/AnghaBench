
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int npy_intp ;
struct TYPE_18__ {scalar_t__ type_num; int elsize; TYPE_10__* subarray; struct TYPE_18__* names; struct TYPE_18__* fields; int alignment; int flags; scalar_t__ metadata; } ;
struct TYPE_17__ {int member_1; int len; int* ptr; int * member_0; } ;
struct TYPE_16__ {int * shape; TYPE_2__* base; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Dims ;
typedef TYPE_2__ PyArray_Descr ;
typedef int PyArray_ArrayDescr ;


 scalar_t__ DEPRECATE_FUTUREWARNING (char*) ;
 int NPY_MAXDIMS ;
 int NPY_MAX_INT ;
 scalar_t__ NPY_UNICODE ;
 int NPY_VOID ;
 int PyArray_DESCR_REPLACE (TYPE_2__*) ;
 int PyArray_DescrAlignConverter (int *,TYPE_2__**) ;
 int PyArray_DescrConverter (int *,TYPE_2__**) ;
 TYPE_2__* PyArray_DescrNewFromType (int ) ;
 int PyArray_IntpConverter (int *,TYPE_1__*) ;
 int PyArray_OverflowMultiplyList (int*,int) ;
 int PyArray_PyIntAsInt (int *) ;
 TYPE_10__* PyArray_malloc (int) ;
 scalar_t__ PyDataType_ISUNSIZED (TYPE_2__*) ;
 scalar_t__ PyDictProxy_Check (int *) ;
 scalar_t__ PyDict_Check (int *) ;
 int PyDict_Merge (scalar_t__,int *,int ) ;
 int PyErr_Clear () ;
 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int PyInt_FromLong (long) ;
 scalar_t__ PyNumber_Check (int *) ;
 scalar_t__ PyTuple_Check (int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int ) ;
 int Py_DECREF (TYPE_2__*) ;
 int Py_XDECREF (TYPE_2__*) ;
 TYPE_2__* _use_inherit (TYPE_2__*,int *,int*) ;
 scalar_t__ error_converting (int) ;
 int npy_free_cache_dim_obj (TYPE_1__) ;
 int npy_mul_with_overflow_int (int*,int,int) ;

__attribute__((used)) static PyArray_Descr *
_convert_from_tuple(PyObject *obj, int align)
{
    PyArray_Descr *type, *res;
    PyObject *val;
    int errflag;

    if (PyTuple_GET_SIZE(obj) != 2) {
        return ((void*)0);
    }
    if (align) {
        if (!PyArray_DescrAlignConverter(PyTuple_GET_ITEM(obj, 0), &type)) {
            return ((void*)0);
        }
    }
    else {
        if (!PyArray_DescrConverter(PyTuple_GET_ITEM(obj, 0), &type)) {
            return ((void*)0);
        }
    }
    val = PyTuple_GET_ITEM(obj,1);

    res = _use_inherit(type, val, &errflag);
    if (res || errflag) {
        Py_DECREF(type);
        return res;
    }
    PyErr_Clear();




    if (PyDataType_ISUNSIZED(type)) {

        int itemsize = PyArray_PyIntAsInt(PyTuple_GET_ITEM(obj,1));

        if (error_converting(itemsize)) {
            PyErr_SetString(PyExc_ValueError,
                    "invalid itemsize in generic type tuple");
            Py_DECREF(type);
            return ((void*)0);
        }
        PyArray_DESCR_REPLACE(type);
        if (type == ((void*)0)) {
            return ((void*)0);
        }
        if (type->type_num == NPY_UNICODE) {
            type->elsize = itemsize << 2;
        }
        else {
            type->elsize = itemsize;
        }
        return type;
    }
    else if (type->metadata && (PyDict_Check(val) || PyDictProxy_Check(val))) {

        if (PyDict_Merge(type->metadata, val, 0) == -1) {
            Py_DECREF(type);
            return ((void*)0);
        }
        return type;
    }
    else {





        PyArray_Dims shape = {((void*)0), -1};
        PyArray_Descr *newdescr = ((void*)0);
        npy_intp items;
        int i, overflowed;
        int nbytes;

        if (!(PyArray_IntpConverter(val, &shape)) || (shape.len > NPY_MAXDIMS)) {
            PyErr_SetString(PyExc_ValueError,
                    "invalid shape in fixed-type tuple.");
            goto fail;
        }

        if (shape.len == 0 && PyTuple_Check(val)) {
            npy_free_cache_dim_obj(shape);
            return type;
        }

        if (shape.len == 1
                && shape.ptr[0] == 1
                && PyNumber_Check(val)) {

            if (DEPRECATE_FUTUREWARNING(
                        "Passing (type, 1) or '1type' as a synonym of type is "
                        "deprecated; in a future version of numpy, it will be "
                        "understood as (type, (1,)) / '(1,)type'.") < 0) {
                goto fail;
            }
            npy_free_cache_dim_obj(shape);
            return type;
        }


        for (i=0; i < shape.len; i++) {
            if (shape.ptr[i] < 0) {
                PyErr_SetString(PyExc_ValueError,
                                "invalid shape in fixed-type tuple: "
                                "dimension smaller then zero.");
                goto fail;
            }
            if (shape.ptr[i] > NPY_MAX_INT) {
                PyErr_SetString(PyExc_ValueError,
                                "invalid shape in fixed-type tuple: "
                                "dimension does not fit into a C int.");
                goto fail;
            }
        }
        items = PyArray_OverflowMultiplyList(shape.ptr, shape.len);
        if (items < 0 || items > NPY_MAX_INT) {
            overflowed = 1;
        }
        else {
            overflowed = npy_mul_with_overflow_int(
                &nbytes, type->elsize, (int) items);
        }
        if (overflowed) {
            PyErr_SetString(PyExc_ValueError,
                            "invalid shape in fixed-type tuple: dtype size in "
                            "bytes must fit into a C int.");
            goto fail;
        }
        newdescr = PyArray_DescrNewFromType(NPY_VOID);
        if (newdescr == ((void*)0)) {
            goto fail;
        }
        newdescr->elsize = nbytes;
        newdescr->subarray = PyArray_malloc(sizeof(PyArray_ArrayDescr));
        if (newdescr->subarray == ((void*)0)) {
            PyErr_NoMemory();
            goto fail;
        }
        newdescr->flags = type->flags;
        newdescr->alignment = type->alignment;
        newdescr->subarray->base = type;
        type = ((void*)0);
        Py_XDECREF(newdescr->fields);
        Py_XDECREF(newdescr->names);
        newdescr->fields = ((void*)0);
        newdescr->names = ((void*)0);





        newdescr->subarray->shape = PyTuple_New(shape.len);
        if (newdescr->subarray->shape == ((void*)0)) {
            goto fail;
        }
        for (i=0; i < shape.len; i++) {
            PyTuple_SET_ITEM(newdescr->subarray->shape, i,
                             PyInt_FromLong((long)shape.ptr[i]));

            if (PyTuple_GET_ITEM(newdescr->subarray->shape, i) == ((void*)0)) {
                goto fail;
            }
        }

        npy_free_cache_dim_obj(shape);
        return newdescr;

    fail:
        Py_XDECREF(type);
        Py_XDECREF(newdescr);
        npy_free_cache_dim_obj(shape);
        return ((void*)0);
    }
}
