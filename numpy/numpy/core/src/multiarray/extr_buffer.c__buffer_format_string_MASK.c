#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_longlong ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  _tmp_string_t ;
struct TYPE_7__ {int type_num; scalar_t__ elsize; char byteorder; int /*<<< orphan*/  type; int /*<<< orphan*/  fields; int /*<<< orphan*/ * names; TYPE_1__* subarray; } ;
struct TYPE_6__ {TYPE_2__* base; int /*<<< orphan*/ * shape; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  Generic ; 
#define  NPY_BOOL 149 
#define  NPY_BYTE 148 
#define  NPY_CDOUBLE 147 
#define  NPY_CFLOAT 146 
#define  NPY_CLONGDOUBLE 145 
#define  NPY_DOUBLE 144 
#define  NPY_FLOAT 143 
#define  NPY_HALF 142 
#define  NPY_INT 141 
#define  NPY_LONG 140 
#define  NPY_LONGDOUBLE 139 
#define  NPY_LONGLONG 138 
#define  NPY_OBJECT 137 
#define  NPY_SHORT 136 
 int NPY_SIZEOF_LONG ; 
#define  NPY_STRING 135 
#define  NPY_UBYTE 134 
#define  NPY_UINT 133 
#define  NPY_ULONG 132 
#define  NPY_ULONGLONG 131 
#define  NPY_UNICODE 130 
#define  NPY_USHORT 129 
#define  NPY_VOID 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 

__attribute__((used)) static int
FUNC21(PyArray_Descr *descr, _tmp_string_t *str,
                      PyObject* obj, Py_ssize_t *offset,
                      char *active_byteorder)
{
    int k;
    char _active_byteorder = '@';
    Py_ssize_t _offset = 0;

    if (active_byteorder == NULL) {
        active_byteorder = &_active_byteorder;
    }
    if (offset == NULL) {
        offset = &_offset;
    }

    if (descr->subarray) {
        PyObject *item, *subarray_tuple;
        Py_ssize_t total_count = 1;
        Py_ssize_t dim_size;
        Py_ssize_t old_offset;
        char buf[128];
        int ret;

        if (FUNC8(descr->subarray->shape)) {
            subarray_tuple = descr->subarray->shape;
            FUNC14(subarray_tuple);
        }
        else {
            subarray_tuple = FUNC12("(O)", descr->subarray->shape);
        }

        if (FUNC15(str, '(') < 0) {
            ret = -1;
            goto subarray_fail;
        }
        for (k = 0; k < FUNC10(subarray_tuple); ++k) {
            if (k > 0) {
                if (FUNC15(str, ',') < 0) {
                    ret = -1;
                    goto subarray_fail;
                }
            }
            item = FUNC9(subarray_tuple, k);
            dim_size = FUNC6(item, NULL);

            FUNC7(buf, sizeof(buf), "%ld", (long)dim_size);
            if (FUNC17(str, buf) < 0) {
                ret = -1;
                goto subarray_fail;
            }
            total_count *= dim_size;
        }
        if (FUNC15(str, ')') < 0) {
            ret = -1;
            goto subarray_fail;
        }

        old_offset = *offset;
        ret = FUNC21(descr->subarray->base, str, obj, offset,
                                    active_byteorder);
        *offset = old_offset + (*offset - old_offset) * total_count;

    subarray_fail:
        FUNC13(subarray_tuple);
        return ret;
    }
    else if (FUNC1(descr)) {
        Py_ssize_t base_offset = *offset;

        if (FUNC17(str, "T{") < 0) return -1;
        for (k = 0; k < FUNC10(descr->names); ++k) {
            PyObject *name, *item, *offset_obj;
            PyArray_Descr *child;
            Py_ssize_t new_offset;
            int ret;

            name = FUNC9(descr->names, k);
            item = FUNC2(descr->fields, name);

            child = (PyArray_Descr*)FUNC11(item, 0);
            offset_obj = FUNC11(item, 1);
            new_offset = FUNC5(offset_obj);
            if (FUNC20(new_offset)) {
                return -1;
            }
            new_offset += base_offset;

            /* Insert padding manually */
            if (*offset > new_offset) {
                FUNC4(
                    PyExc_ValueError,
                    "dtypes with overlapping or out-of-order fields are not "
                    "representable as buffers. Consider reordering the fields."
                );
                return -1;
            }
            while (*offset < new_offset) {
                if (FUNC15(str, 'x') < 0) return -1;
                ++*offset;
            }

            /* Insert child item */
            ret = FUNC21(child, str, obj, offset,
                                  active_byteorder);
            if (ret < 0) {
                return -1;
            }

            /* Insert field name */
            if (FUNC16(str, name) < 0) return -1;
        }
        if (FUNC15(str, '}') < 0) return -1;
    }
    else {
        int is_standard_size = 1;
        int is_natively_aligned;
        int is_native_only_type = (descr->type_num == NPY_LONGDOUBLE ||
                                   descr->type_num == NPY_CLONGDOUBLE);
        if (sizeof(npy_longlong) != 8) {
            is_native_only_type = is_native_only_type || (
                descr->type_num == NPY_LONGLONG ||
                descr->type_num == NPY_ULONGLONG);
        }

        *offset += descr->elsize;

        if (FUNC0(obj, Generic)) {
            /* scalars are always natively aligned */
            is_natively_aligned = 1;
        }
        else {
            is_natively_aligned = FUNC18(descr,
                                              (PyArrayObject*)obj, *offset);
        }

        if (descr->byteorder == '=' && is_natively_aligned) {
            /* Prefer native types, to cater for Cython */
            is_standard_size = 0;
            if (*active_byteorder != '@') {
                if (FUNC15(str, '@') < 0) return -1;
                *active_byteorder = '@';
            }
        }
        else if (descr->byteorder == '=' && is_native_only_type) {
            /* Data types that have no standard size */
            is_standard_size = 0;
            if (*active_byteorder != '^') {
                if (FUNC15(str, '^') < 0) return -1;
                *active_byteorder = '^';
            }
        }
        else if (descr->byteorder == '<' || descr->byteorder == '>' ||
                 descr->byteorder == '=') {
            is_standard_size = 1;
            if (*active_byteorder != descr->byteorder) {
                if (FUNC15(str, descr->byteorder) < 0) return -1;
                *active_byteorder = descr->byteorder;
            }

            if (is_native_only_type) {
                /*
                 * It's not possible to express native-only data types
                 * in non-native npy_byte orders
                 */
                FUNC3(PyExc_ValueError,
                             "cannot expose native-only dtype '%c' in "
                             "non-native byte order '%c' via buffer interface",
                             descr->type, descr->byteorder);
                return -1;
            }
        }

        switch (descr->type_num) {
        case NPY_BOOL:         if (FUNC15(str, '?') < 0) return -1; break;
        case NPY_BYTE:         if (FUNC15(str, 'b') < 0) return -1; break;
        case NPY_UBYTE:        if (FUNC15(str, 'B') < 0) return -1; break;
        case NPY_SHORT:        if (FUNC15(str, 'h') < 0) return -1; break;
        case NPY_USHORT:       if (FUNC15(str, 'H') < 0) return -1; break;
        case NPY_INT:          if (FUNC15(str, 'i') < 0) return -1; break;
        case NPY_UINT:         if (FUNC15(str, 'I') < 0) return -1; break;
        case NPY_LONG:
            if (is_standard_size && (NPY_SIZEOF_LONG == 8)) {
                if (FUNC15(str, 'q') < 0) return -1;
            }
            else {
                if (FUNC15(str, 'l') < 0) return -1;
            }
            break;
        case NPY_ULONG:
            if (is_standard_size && (NPY_SIZEOF_LONG == 8)) {
                if (FUNC15(str, 'Q') < 0) return -1;
            }
            else {
                if (FUNC15(str, 'L') < 0) return -1;
            }
            break;
        case NPY_LONGLONG:     if (FUNC15(str, 'q') < 0) return -1; break;
        case NPY_ULONGLONG:    if (FUNC15(str, 'Q') < 0) return -1; break;
        case NPY_HALF:         if (FUNC15(str, 'e') < 0) return -1; break;
        case NPY_FLOAT:        if (FUNC15(str, 'f') < 0) return -1; break;
        case NPY_DOUBLE:       if (FUNC15(str, 'd') < 0) return -1; break;
        case NPY_LONGDOUBLE:   if (FUNC15(str, 'g') < 0) return -1; break;
        case NPY_CFLOAT:       if (FUNC17(str, "Zf") < 0) return -1; break;
        case NPY_CDOUBLE:      if (FUNC17(str, "Zd") < 0) return -1; break;
        case NPY_CLONGDOUBLE:  if (FUNC17(str, "Zg") < 0) return -1; break;
        /* XXX NPY_DATETIME */
        /* XXX NPY_TIMEDELTA */
        case NPY_OBJECT:       if (FUNC15(str, 'O') < 0) return -1; break;
        case NPY_STRING: {
            char buf[128];
            FUNC7(buf, sizeof(buf), "%ds", descr->elsize);
            if (FUNC17(str, buf) < 0) return -1;
            break;
        }
        case NPY_UNICODE: {
            /* NumPy Unicode is always 4-byte */
            char buf[128];
            FUNC19(descr->elsize % 4 == 0);
            FUNC7(buf, sizeof(buf), "%dw", descr->elsize / 4);
            if (FUNC17(str, buf) < 0) return -1;
            break;
        }
        case NPY_VOID: {
            /* Insert padding bytes */
            char buf[128];
            FUNC7(buf, sizeof(buf), "%dx", descr->elsize);
            if (FUNC17(str, buf) < 0) return -1;
            break;
        }
        default:
            FUNC3(PyExc_ValueError,
                         "cannot include dtype '%c' in a buffer",
                         descr->type);
            return -1;
        }
    }

    return 0;
}