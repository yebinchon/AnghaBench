
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_63__ TYPE_57__ ;
typedef struct TYPE_62__ TYPE_3__ ;
typedef struct TYPE_61__ TYPE_1__ ;


struct TYPE_63__ {TYPE_1__* shape; TYPE_1__* base; } ;
struct TYPE_62__ {int meta; } ;
struct TYPE_61__ {int hash; char byteorder; int elsize; int alignment; char flags; struct TYPE_61__* metadata; scalar_t__ c_metadata; int type_num; struct TYPE_61__* fields; struct TYPE_61__* names; TYPE_57__* subarray; } ;
typedef int Py_ssize_t ;
typedef TYPE_1__ PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef int PyArray_DatetimeMetaData ;
typedef TYPE_3__ PyArray_DatetimeDTypeMetaData ;
typedef int PyArray_ArrayDescr ;


 int NPY_TRUE ;
 int PyArg_ParseTuple (TYPE_1__*,char*,...) ;
 scalar_t__ PyArray_DescrCheck (TYPE_1__*) ;
 scalar_t__ PyArray_IsNativeByteOrder (char) ;
 int PyArray_free (TYPE_57__*) ;
 TYPE_57__* PyArray_malloc (int) ;
 scalar_t__ PyBytes_AsStringAndSize (TYPE_1__*,char**,int*) ;
 scalar_t__ PyBytes_Check (TYPE_1__*) ;
 int PyDataType_HASSUBARRAY (TYPE_1__*) ;
 scalar_t__ PyDataType_ISDATETIME (TYPE_1__*) ;
 int PyDict_Check (TYPE_1__*) ;
 int PyDict_DelItem (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* PyDict_GetItem (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* PyDict_New () ;
 scalar_t__ PyDict_SetItem (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int PyErr_BadInternalCall () ;
 int PyErr_Clear () ;
 int PyErr_Format (int ,char*,...) ;
 TYPE_1__* PyErr_NoMemory () ;
 int PyErr_SetObject (int ,TYPE_1__*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int PyInt_AsLong (TYPE_1__*) ;
 TYPE_1__* PyInt_FromLong (int) ;
 scalar_t__ PyNumber_Check (TYPE_1__*) ;
 TYPE_1__* PyNumber_Int (TYPE_1__*) ;
 TYPE_1__* PyNumber_Long (TYPE_1__*) ;
 int PyObject_Repr (TYPE_1__*) ;
 scalar_t__ PyTuple_Check (TYPE_1__*) ;
 TYPE_1__* PyTuple_GET_ITEM (TYPE_1__*,int) ;
 int PyTuple_GET_SIZE (TYPE_1__*) ;
 TYPE_1__* PyTuple_New (int) ;
 int PyTuple_SET_ITEM (TYPE_1__*,int,TYPE_1__*) ;
 int PyTuple_Size (TYPE_1__*) ;
 scalar_t__ PyTypeNum_ISEXTENDED (int ) ;
 int PyUString_Check (TYPE_1__*) ;
 int PyUString_ConcatAndDel (TYPE_1__**,int ) ;
 TYPE_1__* PyUString_FromString (char*) ;
 TYPE_1__* PyUnicode_AsASCIIString (TYPE_1__*) ;
 scalar_t__ PyUnicode_Check (TYPE_1__*) ;
 TYPE_1__* PyUnicode_FromEncodedObject (TYPE_1__*,char*,char*) ;
 TYPE_1__* Py_BuildValue (char*,TYPE_1__*) ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_INCREF (TYPE_1__*) ;
 TYPE_1__* Py_None ;
 int Py_RETURN_NONE ;
 int Py_XDECREF (TYPE_1__*) ;
 int Py_XINCREF (TYPE_1__*) ;
 char _descr_find_object (TYPE_1__*) ;
 scalar_t__ _is_tuple_of_integers (TYPE_1__*) ;
 scalar_t__ convert_datetime_metadata_tuple_to_datetime_metadata (TYPE_1__*,int *,int ) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static PyObject *
arraydescr_setstate(PyArray_Descr *self, PyObject *args)
{
    int elsize = -1, alignment = -1;
    int version = 4;
    char endian;
    PyObject *endian_obj;
    PyObject *subarray, *fields, *names = ((void*)0), *metadata=((void*)0);
    int incref_names = 1;
    int int_dtypeflags = 0;
    char dtypeflags;

    if (self->fields == Py_None) {
        Py_RETURN_NONE;
    }
    if (PyTuple_GET_SIZE(args) != 1
            || !(PyTuple_Check(PyTuple_GET_ITEM(args, 0)))) {
        PyErr_BadInternalCall();
        return ((void*)0);
    }
    switch (PyTuple_GET_SIZE(PyTuple_GET_ITEM(args,0))) {
    case 9:
        if (!PyArg_ParseTuple(args, "(iOOOOiiiO):__setstate__",
                    &version, &endian_obj,
                    &subarray, &names, &fields, &elsize,
                    &alignment, &int_dtypeflags, &metadata)) {
            PyErr_Clear();
            return ((void*)0);
        }
        break;
    case 8:
        if (!PyArg_ParseTuple(args, "(iOOOOiii):__setstate__",
                    &version, &endian_obj,
                    &subarray, &names, &fields, &elsize,
                    &alignment, &int_dtypeflags)) {
            return ((void*)0);
        }
        break;
    case 7:
        if (!PyArg_ParseTuple(args, "(iOOOOii):__setstate__",
                    &version, &endian_obj,
                    &subarray, &names, &fields, &elsize,
                    &alignment)) {
            return ((void*)0);
        }
        break;
    case 6:
        if (!PyArg_ParseTuple(args, "(iOOOii):__setstate__",
                    &version,
                    &endian_obj, &subarray, &fields,
                    &elsize, &alignment)) {
            return ((void*)0);
        }
        break;
    case 5:
        version = 0;
        if (!PyArg_ParseTuple(args, "(OOOii):__setstate__",
                    &endian_obj, &subarray, &fields, &elsize,
                    &alignment)) {
            return ((void*)0);
        }
        break;
    default:

        if (PyTuple_GET_SIZE(PyTuple_GET_ITEM(args,0)) > 5) {
            version = PyInt_AsLong(PyTuple_GET_ITEM(args, 0));
        }
        else {
            version = -1;
        }
    }





    if (version < 0 || version > 4) {
        PyErr_Format(PyExc_ValueError,
                     "can't handle version %d of numpy.dtype pickle",
                     version);
        return ((void*)0);
    }

    self->hash = -1;

    if (version == 1 || version == 0) {
        if (fields != Py_None) {
            PyObject *key, *list;
            key = PyInt_FromLong(-1);
            list = PyDict_GetItem(fields, key);
            if (!list) {
                return ((void*)0);
            }
            Py_INCREF(list);
            names = list;
            PyDict_DelItem(fields, key);
            incref_names = 0;
        }
        else {
            names = Py_None;
        }
    }


    if (PyUnicode_Check(endian_obj) || PyBytes_Check(endian_obj)) {
        PyObject *tmp = ((void*)0);
        char *str;
        Py_ssize_t len;

        if (PyUnicode_Check(endian_obj)) {
            tmp = PyUnicode_AsASCIIString(endian_obj);
            if (tmp == ((void*)0)) {
                return ((void*)0);
            }
            endian_obj = tmp;
        }

        if (PyBytes_AsStringAndSize(endian_obj, &str, &len) < 0) {
            Py_XDECREF(tmp);
            return ((void*)0);
        }
        if (len != 1) {
            PyErr_SetString(PyExc_ValueError,
                            "endian is not 1-char string in Numpy dtype unpickling");
            Py_XDECREF(tmp);
            return ((void*)0);
        }
        endian = str[0];
        Py_XDECREF(tmp);
    }
    else {
        PyErr_SetString(PyExc_ValueError,
                        "endian is not a string in Numpy dtype unpickling");
        return ((void*)0);
    }

    if ((fields == Py_None && names != Py_None) ||
        (names == Py_None && fields != Py_None)) {
        PyErr_Format(PyExc_ValueError,
                "inconsistent fields and names in Numpy dtype unpickling");
        return ((void*)0);
    }

    if (names != Py_None && !PyTuple_Check(names)) {
        PyErr_Format(PyExc_ValueError,
                "non-tuple names in Numpy dtype unpickling");
        return ((void*)0);
    }

    if (fields != Py_None && !PyDict_Check(fields)) {
        PyErr_Format(PyExc_ValueError,
                "non-dict fields in Numpy dtype unpickling");
        return ((void*)0);
    }

    if (endian != '|' && PyArray_IsNativeByteOrder(endian)) {
        endian = '=';
    }
    self->byteorder = endian;
    if (self->subarray) {
        Py_XDECREF(self->subarray->base);
        Py_XDECREF(self->subarray->shape);
        PyArray_free(self->subarray);
    }
    self->subarray = ((void*)0);

    if (subarray != Py_None) {
        PyObject *subarray_shape;





        if (!(PyTuple_Check(subarray) &&
              PyTuple_Size(subarray) == 2 &&
              PyArray_DescrCheck(PyTuple_GET_ITEM(subarray, 0)))) {
            PyErr_Format(PyExc_ValueError,
                         "incorrect subarray in __setstate__");
            return ((void*)0);
        }
        subarray_shape = PyTuple_GET_ITEM(subarray, 1);
        if (PyNumber_Check(subarray_shape)) {
            PyObject *tmp;



            tmp = PyNumber_Int(subarray_shape);

            if (tmp == ((void*)0)) {
                return ((void*)0);
            }
            subarray_shape = Py_BuildValue("(O)", tmp);
            Py_DECREF(tmp);
            if (subarray_shape == ((void*)0)) {
                return ((void*)0);
            }
        }
        else if (_is_tuple_of_integers(subarray_shape)) {
            Py_INCREF(subarray_shape);
        }
        else {
            PyErr_Format(PyExc_ValueError,
                         "incorrect subarray shape in __setstate__");
            return ((void*)0);
        }

        self->subarray = PyArray_malloc(sizeof(PyArray_ArrayDescr));
        if (!PyDataType_HASSUBARRAY(self)) {
            return PyErr_NoMemory();
        }
        self->subarray->base = (PyArray_Descr *)PyTuple_GET_ITEM(subarray, 0);
        Py_INCREF(self->subarray->base);
        self->subarray->shape = subarray_shape;
    }

    if (fields != Py_None) {



        Py_ssize_t i;
        int names_ok = 1;
        PyObject *name;

        for (i = 0; i < PyTuple_GET_SIZE(names); ++i) {
            name = PyTuple_GET_ITEM(names, i);
            if (!PyUString_Check(name)) {
                names_ok = 0;
                break;
            }
        }

        if (names_ok) {
            Py_XDECREF(self->fields);
            self->fields = fields;
            Py_INCREF(fields);
            Py_XDECREF(self->names);
            self->names = names;
            if (incref_names) {
                Py_INCREF(names);
            }
        }
        else {
            PyErr_Format(PyExc_ValueError,
                "non-string names in Numpy dtype unpickling");
            return ((void*)0);

        }
    }

    if (PyTypeNum_ISEXTENDED(self->type_num)) {
        self->elsize = elsize;
        self->alignment = alignment;
    }







    dtypeflags = int_dtypeflags;
    if (dtypeflags != int_dtypeflags) {
        PyErr_Format(PyExc_ValueError,
                     "incorrect value for flags variable (overflow)");
        return ((void*)0);
    }
    else {
        self->flags = dtypeflags;
    }

    if (version < 3) {
        self->flags = _descr_find_object(self);
    }





    if (metadata == Py_None) {
        metadata = ((void*)0);
    }

    if (PyDataType_ISDATETIME(self) && (metadata != ((void*)0))) {
        PyObject *old_metadata, *errmsg;
        PyArray_DatetimeMetaData temp_dt_data;

        if ((! PyTuple_Check(metadata)) || (PyTuple_Size(metadata) != 2)) {
            errmsg = PyUString_FromString("Invalid datetime dtype (metadata, c_metadata): ");
            PyUString_ConcatAndDel(&errmsg, PyObject_Repr(metadata));
            PyErr_SetObject(PyExc_ValueError, errmsg);
            Py_DECREF(errmsg);
            return ((void*)0);
        }

        if (convert_datetime_metadata_tuple_to_datetime_metadata(
                                    PyTuple_GET_ITEM(metadata, 1),
                                    &temp_dt_data,
                                    NPY_TRUE) < 0) {
            return ((void*)0);
        }

        old_metadata = self->metadata;
        self->metadata = PyTuple_GET_ITEM(metadata, 0);
        memcpy((char *) &((PyArray_DatetimeDTypeMetaData *)self->c_metadata)->meta,
               (char *) &temp_dt_data,
               sizeof(PyArray_DatetimeMetaData));
        Py_XINCREF(self->metadata);
        Py_XDECREF(old_metadata);
    }
    else {
        PyObject *old_metadata = self->metadata;
        self->metadata = metadata;
        Py_XINCREF(self->metadata);
        Py_XDECREF(old_metadata);
    }

    Py_RETURN_NONE;
}
