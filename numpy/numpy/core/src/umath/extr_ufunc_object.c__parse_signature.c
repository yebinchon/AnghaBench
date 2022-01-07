
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int npy_uint32 ;
typedef int npy_intp ;
typedef int npy_bool ;
struct TYPE_3__ {int core_enabled; int core_num_dim_ix; int* core_num_dims; int nargs; int* core_offsets; int* core_dim_ixs; int* core_dim_sizes; int* core_dim_flags; int nin; void* core_signature; } ;
typedef TYPE_1__ PyUFuncObject ;


 int PyArray_free (void*) ;
 void* PyArray_malloc (int) ;
 void* PyArray_realloc (int*,int) ;
 int PyErr_Format (int ,char*,char*,int,char const*) ;
 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyExc_ValueError ;
 int UFUNC_CORE_DIM_CAN_IGNORE ;
 int UFUNC_CORE_DIM_SIZE_INFERRED ;
 int _get_end_of_name (char const*,int) ;
 scalar_t__ _get_size (char const*) ;
 scalar_t__ _is_alpha_underscore (char const) ;
 int _is_same_name (char const*,char const*) ;
 int _next_non_white_space (char const*,int) ;
 int strcpy (void*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
_parse_signature(PyUFuncObject *ufunc, const char *signature)
{
    size_t len;
    char const **var_names;
    int nd = 0;
    int cur_arg = 0;
    int cur_core_dim = 0;
    int i = 0;
    char *parse_error = ((void*)0);

    if (signature == ((void*)0)) {
        PyErr_SetString(PyExc_RuntimeError,
                        "_parse_signature with NULL signature");
        return -1;
    }
    len = strlen(signature);
    ufunc->core_signature = PyArray_malloc(sizeof(char) * (len+1));
    if (ufunc->core_signature) {
        strcpy(ufunc->core_signature, signature);
    }

    var_names = PyArray_malloc(sizeof(char const*) * len);
    if (var_names == ((void*)0)) {
        PyErr_NoMemory();
        return -1;
    }

    ufunc->core_enabled = 1;
    ufunc->core_num_dim_ix = 0;
    ufunc->core_num_dims = PyArray_malloc(sizeof(int) * ufunc->nargs);
    ufunc->core_offsets = PyArray_malloc(sizeof(int) * ufunc->nargs);

    ufunc->core_dim_ixs = PyArray_malloc(sizeof(int) * len);
    ufunc->core_dim_sizes = PyArray_malloc(sizeof(npy_intp) * len);
    ufunc->core_dim_flags = PyArray_malloc(sizeof(npy_uint32) * len);

    if (ufunc->core_num_dims == ((void*)0) || ufunc->core_dim_ixs == ((void*)0) ||
        ufunc->core_offsets == ((void*)0) ||
        ufunc->core_dim_sizes == ((void*)0) ||
        ufunc->core_dim_flags == ((void*)0)) {
        PyErr_NoMemory();
        goto fail;
    }
    for (size_t j = 0; j < len; j++) {
        ufunc->core_dim_flags[j] = 0;
    }

    i = _next_non_white_space(signature, 0);
    while (signature[i] != '\0') {

        if (cur_arg == ufunc->nin) {

            if (signature[i] != '-' || signature[i+1] != '>') {
                parse_error = "expect '->'";
                goto fail;
            }
            i = _next_non_white_space(signature, i + 2);
        }





        if (signature[i] != '(') {
            parse_error = "expect '('";
            goto fail;
        }
        i = _next_non_white_space(signature, i + 1);
        while (signature[i] != ')') {

            int ix, i_end;
            npy_intp frozen_size;
            npy_bool can_ignore;

            if (signature[i] == '\0') {
                parse_error = "unexpected end of signature string";
                goto fail;
            }



            if (_is_alpha_underscore(signature[i])) {
                frozen_size = -1;
            }
            else {
                frozen_size = (npy_intp)_get_size(signature + i);
                if (frozen_size <= 0) {
                    parse_error = "expect dimension name or non-zero frozen size";
                    goto fail;
                }
            }

            i_end = _get_end_of_name(signature, i);
            can_ignore = (i_end > 0 && signature[i_end - 1] == '?');




            for(ix = 0; ix < ufunc->core_num_dim_ix; ix++) {
                if (frozen_size > 0 ?
                    frozen_size == ufunc->core_dim_sizes[ix] :
                    _is_same_name(signature + i, var_names[ix])) {
                    break;
                }
            }



            if (ix == ufunc->core_num_dim_ix) {
                ufunc->core_num_dim_ix++;
                var_names[ix] = signature + i;
                ufunc->core_dim_sizes[ix] = frozen_size;
                if (frozen_size < 0) {
                    ufunc->core_dim_flags[ix] |= UFUNC_CORE_DIM_SIZE_INFERRED;
                }
                if (can_ignore) {
                    ufunc->core_dim_flags[ix] |= UFUNC_CORE_DIM_CAN_IGNORE;
                }
            } else {
                if (can_ignore && !(ufunc->core_dim_flags[ix] &
                                    UFUNC_CORE_DIM_CAN_IGNORE)) {
                    parse_error = "? cannot be used, name already seen without ?";
                    goto fail;
                }
                if (!can_ignore && (ufunc->core_dim_flags[ix] &
                                    UFUNC_CORE_DIM_CAN_IGNORE)) {
                    parse_error = "? must be used, name already seen with ?";
                    goto fail;
                }
            }
            ufunc->core_dim_ixs[cur_core_dim] = ix;
            cur_core_dim++;
            nd++;
            i = _next_non_white_space(signature, i_end);
            if (signature[i] != ',' && signature[i] != ')') {
                parse_error = "expect ',' or ')'";
                goto fail;
            }
            if (signature[i] == ',')
            {
                i = _next_non_white_space(signature, i + 1);
                if (signature[i] == ')') {
                    parse_error = "',' must not be followed by ')'";
                    goto fail;
                }
            }
        }
        ufunc->core_num_dims[cur_arg] = nd;
        ufunc->core_offsets[cur_arg] = cur_core_dim-nd;
        cur_arg++;
        nd = 0;

        i = _next_non_white_space(signature, i + 1);
        if (cur_arg != ufunc->nin && cur_arg != ufunc->nargs) {




            if (signature[i] != ',') {
                parse_error = "expect ','";
                goto fail;
            }
            i = _next_non_white_space(signature, i + 1);
        }
    }
    if (cur_arg != ufunc->nargs) {
        parse_error = "incomplete signature: not all arguments found";
        goto fail;
    }
    ufunc->core_dim_ixs = PyArray_realloc(ufunc->core_dim_ixs,
            sizeof(int) * cur_core_dim);
    ufunc->core_dim_sizes = PyArray_realloc(
            ufunc->core_dim_sizes,
            sizeof(npy_intp) * ufunc->core_num_dim_ix);
    ufunc->core_dim_flags = PyArray_realloc(
            ufunc->core_dim_flags,
            sizeof(npy_uint32) * ufunc->core_num_dim_ix);


    if (cur_core_dim == 0) {
        ufunc->core_enabled = 0;
    }
    PyArray_free((void*)var_names);
    return 0;

fail:
    PyArray_free((void*)var_names);
    if (parse_error) {
        PyErr_Format(PyExc_ValueError,
                     "%s at position %d in \"%s\"",
                     parse_error, i, signature);
    }
    return -1;
}
