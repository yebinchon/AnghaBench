
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int npy_longlong ;
typedef int buf ;
typedef int _tmp_string_t ;
struct TYPE_7__ {int type_num; scalar_t__ elsize; char byteorder; int type; int fields; int * names; TYPE_1__* subarray; } ;
struct TYPE_6__ {TYPE_2__* base; int * shape; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_2__ PyArray_Descr ;
typedef int PyArrayObject ;


 int Generic ;
 int NPY_SIZEOF_LONG ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 scalar_t__ PyDataType_HASFIELDS (TYPE_2__*) ;
 int * PyDict_GetItem (int ,int *) ;
 int PyErr_Format (int ,char*,int ,...) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 scalar_t__ PyInt_AsLong (int *) ;
 scalar_t__ PyNumber_AsSsize_t (int *,int *) ;
 int PyOS_snprintf (char*,int,char*,int) ;
 scalar_t__ PyTuple_Check (int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int * PyTuple_GetItem (int *,int) ;
 int * Py_BuildValue (char*,int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 scalar_t__ _append_char (int *,char) ;
 scalar_t__ _append_field_name (int *,int *) ;
 scalar_t__ _append_str (int *,char*) ;
 int _is_natively_aligned_at (TYPE_2__*,int *,scalar_t__) ;
 int assert (int) ;
 scalar_t__ error_converting (scalar_t__) ;

__attribute__((used)) static int
_buffer_format_string(PyArray_Descr *descr, _tmp_string_t *str,
                      PyObject* obj, Py_ssize_t *offset,
                      char *active_byteorder)
{
    int k;
    char _active_byteorder = '@';
    Py_ssize_t _offset = 0;

    if (active_byteorder == ((void*)0)) {
        active_byteorder = &_active_byteorder;
    }
    if (offset == ((void*)0)) {
        offset = &_offset;
    }

    if (descr->subarray) {
        PyObject *item, *subarray_tuple;
        Py_ssize_t total_count = 1;
        Py_ssize_t dim_size;
        Py_ssize_t old_offset;
        char buf[128];
        int ret;

        if (PyTuple_Check(descr->subarray->shape)) {
            subarray_tuple = descr->subarray->shape;
            Py_INCREF(subarray_tuple);
        }
        else {
            subarray_tuple = Py_BuildValue("(O)", descr->subarray->shape);
        }

        if (_append_char(str, '(') < 0) {
            ret = -1;
            goto subarray_fail;
        }
        for (k = 0; k < PyTuple_GET_SIZE(subarray_tuple); ++k) {
            if (k > 0) {
                if (_append_char(str, ',') < 0) {
                    ret = -1;
                    goto subarray_fail;
                }
            }
            item = PyTuple_GET_ITEM(subarray_tuple, k);
            dim_size = PyNumber_AsSsize_t(item, ((void*)0));

            PyOS_snprintf(buf, sizeof(buf), "%ld", (long)dim_size);
            if (_append_str(str, buf) < 0) {
                ret = -1;
                goto subarray_fail;
            }
            total_count *= dim_size;
        }
        if (_append_char(str, ')') < 0) {
            ret = -1;
            goto subarray_fail;
        }

        old_offset = *offset;
        ret = _buffer_format_string(descr->subarray->base, str, obj, offset,
                                    active_byteorder);
        *offset = old_offset + (*offset - old_offset) * total_count;

    subarray_fail:
        Py_DECREF(subarray_tuple);
        return ret;
    }
    else if (PyDataType_HASFIELDS(descr)) {
        Py_ssize_t base_offset = *offset;

        if (_append_str(str, "T{") < 0) return -1;
        for (k = 0; k < PyTuple_GET_SIZE(descr->names); ++k) {
            PyObject *name, *item, *offset_obj;
            PyArray_Descr *child;
            Py_ssize_t new_offset;
            int ret;

            name = PyTuple_GET_ITEM(descr->names, k);
            item = PyDict_GetItem(descr->fields, name);

            child = (PyArray_Descr*)PyTuple_GetItem(item, 0);
            offset_obj = PyTuple_GetItem(item, 1);
            new_offset = PyInt_AsLong(offset_obj);
            if (error_converting(new_offset)) {
                return -1;
            }
            new_offset += base_offset;


            if (*offset > new_offset) {
                PyErr_SetString(
                    PyExc_ValueError,
                    "dtypes with overlapping or out-of-order fields are not "
                    "representable as buffers. Consider reordering the fields."
                );
                return -1;
            }
            while (*offset < new_offset) {
                if (_append_char(str, 'x') < 0) return -1;
                ++*offset;
            }


            ret = _buffer_format_string(child, str, obj, offset,
                                  active_byteorder);
            if (ret < 0) {
                return -1;
            }


            if (_append_field_name(str, name) < 0) return -1;
        }
        if (_append_char(str, '}') < 0) return -1;
    }
    else {
        int is_standard_size = 1;
        int is_natively_aligned;
        int is_native_only_type = (descr->type_num == 139 ||
                                   descr->type_num == 145);
        if (sizeof(npy_longlong) != 8) {
            is_native_only_type = is_native_only_type || (
                descr->type_num == 138 ||
                descr->type_num == 131);
        }

        *offset += descr->elsize;

        if (PyArray_IsScalar(obj, Generic)) {

            is_natively_aligned = 1;
        }
        else {
            is_natively_aligned = _is_natively_aligned_at(descr,
                                              (PyArrayObject*)obj, *offset);
        }

        if (descr->byteorder == '=' && is_natively_aligned) {

            is_standard_size = 0;
            if (*active_byteorder != '@') {
                if (_append_char(str, '@') < 0) return -1;
                *active_byteorder = '@';
            }
        }
        else if (descr->byteorder == '=' && is_native_only_type) {

            is_standard_size = 0;
            if (*active_byteorder != '^') {
                if (_append_char(str, '^') < 0) return -1;
                *active_byteorder = '^';
            }
        }
        else if (descr->byteorder == '<' || descr->byteorder == '>' ||
                 descr->byteorder == '=') {
            is_standard_size = 1;
            if (*active_byteorder != descr->byteorder) {
                if (_append_char(str, descr->byteorder) < 0) return -1;
                *active_byteorder = descr->byteorder;
            }

            if (is_native_only_type) {




                PyErr_Format(PyExc_ValueError,
                             "cannot expose native-only dtype '%c' in "
                             "non-native byte order '%c' via buffer interface",
                             descr->type, descr->byteorder);
                return -1;
            }
        }

        switch (descr->type_num) {
        case 149: if (_append_char(str, '?') < 0) return -1; break;
        case 148: if (_append_char(str, 'b') < 0) return -1; break;
        case 134: if (_append_char(str, 'B') < 0) return -1; break;
        case 136: if (_append_char(str, 'h') < 0) return -1; break;
        case 129: if (_append_char(str, 'H') < 0) return -1; break;
        case 141: if (_append_char(str, 'i') < 0) return -1; break;
        case 133: if (_append_char(str, 'I') < 0) return -1; break;
        case 140:
            if (is_standard_size && (NPY_SIZEOF_LONG == 8)) {
                if (_append_char(str, 'q') < 0) return -1;
            }
            else {
                if (_append_char(str, 'l') < 0) return -1;
            }
            break;
        case 132:
            if (is_standard_size && (NPY_SIZEOF_LONG == 8)) {
                if (_append_char(str, 'Q') < 0) return -1;
            }
            else {
                if (_append_char(str, 'L') < 0) return -1;
            }
            break;
        case 138: if (_append_char(str, 'q') < 0) return -1; break;
        case 131: if (_append_char(str, 'Q') < 0) return -1; break;
        case 142: if (_append_char(str, 'e') < 0) return -1; break;
        case 143: if (_append_char(str, 'f') < 0) return -1; break;
        case 144: if (_append_char(str, 'd') < 0) return -1; break;
        case 139: if (_append_char(str, 'g') < 0) return -1; break;
        case 146: if (_append_str(str, "Zf") < 0) return -1; break;
        case 147: if (_append_str(str, "Zd") < 0) return -1; break;
        case 145: if (_append_str(str, "Zg") < 0) return -1; break;


        case 137: if (_append_char(str, 'O') < 0) return -1; break;
        case 135: {
            char buf[128];
            PyOS_snprintf(buf, sizeof(buf), "%ds", descr->elsize);
            if (_append_str(str, buf) < 0) return -1;
            break;
        }
        case 130: {

            char buf[128];
            assert(descr->elsize % 4 == 0);
            PyOS_snprintf(buf, sizeof(buf), "%dw", descr->elsize / 4);
            if (_append_str(str, buf) < 0) return -1;
            break;
        }
        case 128: {

            char buf[128];
            PyOS_snprintf(buf, sizeof(buf), "%dx", descr->elsize);
            if (_append_str(str, buf) < 0) return -1;
            break;
        }
        default:
            PyErr_Format(PyExc_ValueError,
                         "cannot include dtype '%c' in a buffer",
                         descr->type);
            return -1;
        }
    }

    return 0;
}
