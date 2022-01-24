#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_63__   TYPE_57__ ;
typedef  struct TYPE_62__   TYPE_3__ ;
typedef  struct TYPE_61__   TYPE_1__ ;

/* Type definitions */
struct TYPE_63__ {TYPE_1__* shape; TYPE_1__* base; } ;
struct TYPE_62__ {int /*<<< orphan*/  meta; } ;
struct TYPE_61__ {int hash; char byteorder; int elsize; int alignment; char flags; struct TYPE_61__* metadata; scalar_t__ c_metadata; int /*<<< orphan*/  type_num; struct TYPE_61__* fields; struct TYPE_61__* names; TYPE_57__* subarray; } ;
typedef  int Py_ssize_t ;
typedef  TYPE_1__ PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArray_DatetimeMetaData ;
typedef  TYPE_3__ PyArray_DatetimeDTypeMetaData ;
typedef  int /*<<< orphan*/  PyArray_ArrayDescr ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_57__*) ; 
 TYPE_57__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char**,int*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC12 () ; 
 scalar_t__ FUNC13 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int FUNC20 (TYPE_1__*) ; 
 TYPE_1__* FUNC21 (int) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 TYPE_1__* FUNC23 (TYPE_1__*) ; 
 TYPE_1__* FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 scalar_t__ FUNC26 (TYPE_1__*) ; 
 TYPE_1__* FUNC27 (TYPE_1__*,int) ; 
 int FUNC28 (TYPE_1__*) ; 
 TYPE_1__* FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int,TYPE_1__*) ; 
 int FUNC31 (TYPE_1__*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC35 (char*) ; 
 TYPE_1__* FUNC36 (TYPE_1__*) ; 
 scalar_t__ FUNC37 (TYPE_1__*) ; 
 TYPE_1__* FUNC38 (TYPE_1__*,char*,char*) ; 
 TYPE_1__* FUNC39 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_1__*) ; 
 TYPE_1__* Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC42 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_1__*) ; 
 char FUNC44 (TYPE_1__*) ; 
 scalar_t__ FUNC45 (TYPE_1__*) ; 
 scalar_t__ FUNC46 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (char*,char*,int) ; 

__attribute__((used)) static PyObject *
FUNC48(PyArray_Descr *self, PyObject *args)
{
    int elsize = -1, alignment = -1;
    int version = 4;
    char endian;
    PyObject *endian_obj;
    PyObject *subarray, *fields, *names = NULL, *metadata=NULL;
    int incref_names = 1;
    int int_dtypeflags = 0;
    char dtypeflags;

    if (self->fields == Py_None) {
        Py_RETURN_NONE;
    }
    if (FUNC28(args) != 1
            || !(FUNC26(FUNC27(args, 0)))) {
        FUNC14();
        return NULL;
    }
    switch (FUNC28(FUNC27(args,0))) {
    case 9:
        if (!FUNC0(args, "(iOOOOiiiO):__setstate__",
                    &version, &endian_obj,
                    &subarray, &names, &fields, &elsize,
                    &alignment, &int_dtypeflags, &metadata)) {
            FUNC15();
            return NULL;
        }
        break;
    case 8:
        if (!FUNC0(args, "(iOOOOiii):__setstate__",
                    &version, &endian_obj,
                    &subarray, &names, &fields, &elsize,
                    &alignment, &int_dtypeflags)) {
            return NULL;
        }
        break;
    case 7:
        if (!FUNC0(args, "(iOOOOii):__setstate__",
                    &version, &endian_obj,
                    &subarray, &names, &fields, &elsize,
                    &alignment)) {
            return NULL;
        }
        break;
    case 6:
        if (!FUNC0(args, "(iOOOii):__setstate__",
                    &version,
                    &endian_obj, &subarray, &fields,
                    &elsize, &alignment)) {
            return NULL;
        }
        break;
    case 5:
        version = 0;
        if (!FUNC0(args, "(OOOii):__setstate__",
                    &endian_obj, &subarray, &fields, &elsize,
                    &alignment)) {
            return NULL;
        }
        break;
    default:
        /* raise an error */
        if (FUNC28(FUNC27(args,0)) > 5) {
            version = FUNC20(FUNC27(args, 0));
        }
        else {
            version = -1;
        }
    }

    /*
     * If we ever need another pickle format, increment the version
     * number. But we should still be able to handle the old versions.
     */
    if (version < 0 || version > 4) {
        FUNC16(PyExc_ValueError,
                     "can't handle version %d of numpy.dtype pickle",
                     version);
        return NULL;
    }
    /* Invalidate cached hash value */
    self->hash = -1;

    if (version == 1 || version == 0) {
        if (fields != Py_None) {
            PyObject *key, *list;
            key = FUNC21(-1);
            list = FUNC11(fields, key);
            if (!list) {
                return NULL;
            }
            FUNC41(list);
            names = list;
            FUNC10(fields, key);
            incref_names = 0;
        }
        else {
            names = Py_None;
        }
    }

    /* Parse endian */
    if (FUNC37(endian_obj) || FUNC6(endian_obj)) {
        PyObject *tmp = NULL;
        char *str;
        Py_ssize_t len;

        if (FUNC37(endian_obj)) {
            tmp = FUNC36(endian_obj);
            if (tmp == NULL) {
                return NULL;
            }
            endian_obj = tmp;
        }

        if (FUNC5(endian_obj, &str, &len) < 0) {
            FUNC42(tmp);
            return NULL;
        }
        if (len != 1) {
            FUNC19(PyExc_ValueError,
                            "endian is not 1-char string in Numpy dtype unpickling");
            FUNC42(tmp);
            return NULL;
        }
        endian = str[0];
        FUNC42(tmp);
    }
    else {
        FUNC19(PyExc_ValueError,
                        "endian is not a string in Numpy dtype unpickling");
        return NULL;
    }

    if ((fields == Py_None && names != Py_None) ||
        (names == Py_None && fields != Py_None)) {
        FUNC16(PyExc_ValueError,
                "inconsistent fields and names in Numpy dtype unpickling");
        return NULL;
    }

    if (names != Py_None && !FUNC26(names)) {
        FUNC16(PyExc_ValueError,
                "non-tuple names in Numpy dtype unpickling");
        return NULL;
    }

    if (fields != Py_None && !FUNC9(fields)) {
        FUNC16(PyExc_ValueError,
                "non-dict fields in Numpy dtype unpickling");
        return NULL;
    }

    if (endian != '|' && FUNC2(endian)) {
        endian = '=';
    }
    self->byteorder = endian;
    if (self->subarray) {
        FUNC42(self->subarray->base);
        FUNC42(self->subarray->shape);
        FUNC3(self->subarray);
    }
    self->subarray = NULL;

    if (subarray != Py_None) {
        PyObject *subarray_shape;

        /*
         * Ensure that subarray[0] is an ArrayDescr and
         * that subarray_shape obtained from subarray[1] is a tuple of integers.
         */
        if (!(FUNC26(subarray) &&
              FUNC31(subarray) == 2 &&
              FUNC1(FUNC27(subarray, 0)))) {
            FUNC16(PyExc_ValueError,
                         "incorrect subarray in __setstate__");
            return NULL;
        }
        subarray_shape = FUNC27(subarray, 1);
        if (FUNC22(subarray_shape)) {
            PyObject *tmp;
#if defined(NPY_PY3K)
            tmp = PyNumber_Long(subarray_shape);
#else
            tmp = FUNC23(subarray_shape);
#endif
            if (tmp == NULL) {
                return NULL;
            }
            subarray_shape = FUNC39("(O)", tmp);
            FUNC40(tmp);
            if (subarray_shape == NULL) {
                return NULL;
            }
        }
        else if (FUNC45(subarray_shape)) {
            FUNC41(subarray_shape);
        }
        else {
            FUNC16(PyExc_ValueError,
                         "incorrect subarray shape in __setstate__");
            return NULL;
        }

        self->subarray = FUNC4(sizeof(PyArray_ArrayDescr));
        if (!FUNC7(self)) {
            return FUNC17();
        }
        self->subarray->base = (PyArray_Descr *)FUNC27(subarray, 0);
        FUNC41(self->subarray->base);
        self->subarray->shape = subarray_shape;
    }

    if (fields != Py_None) {
        /*
         * Ensure names are of appropriate string type
         */
        Py_ssize_t i;
        int names_ok = 1;
        PyObject *name;

        for (i = 0; i < FUNC28(names); ++i) {
            name = FUNC27(names, i);
            if (!FUNC33(name)) {
                names_ok = 0;
                break;
            }
        }

        if (names_ok) {
            FUNC42(self->fields);
            self->fields = fields;
            FUNC41(fields);
            FUNC42(self->names);
            self->names = names;
            if (incref_names) {
                FUNC41(names);
            }
        }
        else {
#if defined(NPY_PY3K)
            /*
             * To support pickle.load(f, encoding='bytes') for loading Py2
             * generated pickles on Py3, we need to be more lenient and convert
             * field names from byte strings to unicode.
             */
            PyObject *tmp, *new_name, *field;

            tmp = PyDict_New();
            if (tmp == NULL) {
                return NULL;
            }
            Py_XDECREF(self->fields);
            self->fields = tmp;

            tmp = PyTuple_New(PyTuple_GET_SIZE(names));
            if (tmp == NULL) {
                return NULL;
            }
            Py_XDECREF(self->names);
            self->names = tmp;

            for (i = 0; i < PyTuple_GET_SIZE(names); ++i) {
                name = PyTuple_GET_ITEM(names, i);
                field = PyDict_GetItem(fields, name);
                if (!field) {
                    return NULL;
                }

                if (PyUnicode_Check(name)) {
                    new_name = name;
                    Py_INCREF(new_name);
                }
                else {
                    new_name = PyUnicode_FromEncodedObject(name, "ASCII", "strict");
                    if (new_name == NULL) {
                        return NULL;
                    }
                }

                PyTuple_SET_ITEM(self->names, i, new_name);
                if (PyDict_SetItem(self->fields, new_name, field) != 0) {
                    return NULL;
                }
            }
#else
            FUNC16(PyExc_ValueError,
                "non-string names in Numpy dtype unpickling");
            return NULL;
#endif
        }
    }

    if (FUNC32(self->type_num)) {
        self->elsize = elsize;
        self->alignment = alignment;
    }

    /*
     * We use an integer converted to char for backward compatibility with
     * pickled arrays. Pickled arrays created with previous versions encoded
     * flags as an int even though it actually was a char in the PyArray_Descr
     * structure
     */
    dtypeflags = int_dtypeflags;
    if (dtypeflags != int_dtypeflags) {
        FUNC16(PyExc_ValueError,
                     "incorrect value for flags variable (overflow)");
        return NULL;
    }
    else {
        self->flags = dtypeflags;
    }

    if (version < 3) {
        self->flags = FUNC44(self);
    }

    /*
     * We have a borrowed reference to metadata so no need
     * to alter reference count when throwing away Py_None.
     */
    if (metadata == Py_None) {
        metadata = NULL;
    }

    if (FUNC8(self) && (metadata != NULL)) {
        PyObject *old_metadata, *errmsg;
        PyArray_DatetimeMetaData temp_dt_data;

        if ((! FUNC26(metadata)) || (FUNC31(metadata) != 2)) {
            errmsg = FUNC35("Invalid datetime dtype (metadata, c_metadata): ");
            FUNC34(&errmsg, FUNC25(metadata));
            FUNC18(PyExc_ValueError, errmsg);
            FUNC40(errmsg);
            return NULL;
        }

        if (FUNC46(
                                    FUNC27(metadata, 1),
                                    &temp_dt_data,
                                    NPY_TRUE) < 0) {
            return NULL;
        }

        old_metadata = self->metadata;
        self->metadata = FUNC27(metadata, 0);
        FUNC47((char *) &((PyArray_DatetimeDTypeMetaData *)self->c_metadata)->meta,
               (char *) &temp_dt_data,
               sizeof(PyArray_DatetimeMetaData));
        FUNC43(self->metadata);
        FUNC42(old_metadata);
    }
    else {
        PyObject *old_metadata = self->metadata;
        self->metadata = metadata;
        FUNC43(self->metadata);
        FUNC42(old_metadata);
    }

    Py_RETURN_NONE;
}