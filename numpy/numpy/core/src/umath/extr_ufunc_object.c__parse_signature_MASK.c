#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_uint32 ;
typedef  int npy_intp ;
typedef  int npy_bool ;
struct TYPE_3__ {int core_enabled; int core_num_dim_ix; int* core_num_dims; int nargs; int* core_offsets; int* core_dim_ixs; int* core_dim_sizes; int* core_dim_flags; int nin; void* core_signature; } ;
typedef  TYPE_1__ PyUFuncObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int UFUNC_CORE_DIM_CAN_IGNORE ; 
 int UFUNC_CORE_DIM_SIZE_INFERRED ; 
 int FUNC6 (char const*,int) ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const) ; 
 int FUNC9 (char const*,char const*) ; 
 int FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,char const*) ; 
 size_t FUNC12 (char const*) ; 

__attribute__((used)) static int
FUNC13(PyUFuncObject *ufunc, const char *signature)
{
    size_t len;
    char const **var_names;
    int nd = 0;             /* number of dimension of the current argument */
    int cur_arg = 0;        /* index into core_num_dims&core_offsets */
    int cur_core_dim = 0;   /* index into core_dim_ixs */
    int i = 0;
    char *parse_error = NULL;

    if (signature == NULL) {
        FUNC5(PyExc_RuntimeError,
                        "_parse_signature with NULL signature");
        return -1;
    }
    len = FUNC12(signature);
    ufunc->core_signature = FUNC1(sizeof(char) * (len+1));
    if (ufunc->core_signature) {
        FUNC11(ufunc->core_signature, signature);
    }
    /* Allocate sufficient memory to store pointers to all dimension names */
    var_names = FUNC1(sizeof(char const*) * len);
    if (var_names == NULL) {
        FUNC4();
        return -1;
    }

    ufunc->core_enabled = 1;
    ufunc->core_num_dim_ix = 0;
    ufunc->core_num_dims = FUNC1(sizeof(int) * ufunc->nargs);
    ufunc->core_offsets = FUNC1(sizeof(int) * ufunc->nargs);
    /* The next three items will be shrunk later */
    ufunc->core_dim_ixs = FUNC1(sizeof(int) * len);
    ufunc->core_dim_sizes = FUNC1(sizeof(npy_intp) * len);
    ufunc->core_dim_flags = FUNC1(sizeof(npy_uint32) * len);

    if (ufunc->core_num_dims == NULL || ufunc->core_dim_ixs == NULL ||
        ufunc->core_offsets == NULL ||
        ufunc->core_dim_sizes == NULL ||
        ufunc->core_dim_flags == NULL) {
        FUNC4();
        goto fail;
    }
    for (size_t j = 0; j < len; j++) {
        ufunc->core_dim_flags[j] = 0;
    }

    i = FUNC10(signature, 0);
    while (signature[i] != '\0') {
        /* loop over input/output arguments */
        if (cur_arg == ufunc->nin) {
            /* expect "->" */
            if (signature[i] != '-' || signature[i+1] != '>') {
                parse_error = "expect '->'";
                goto fail;
            }
            i = FUNC10(signature, i + 2);
        }

        /*
         * parse core dimensions of one argument,
         * e.g. "()", "(i)", or "(i,j)"
         */
        if (signature[i] != '(') {
            parse_error = "expect '('";
            goto fail;
        }
        i = FUNC10(signature, i + 1);
        while (signature[i] != ')') {
            /* loop over core dimensions */
            int ix, i_end;
            npy_intp frozen_size;
            npy_bool can_ignore;

            if (signature[i] == '\0') {
                parse_error = "unexpected end of signature string";
                goto fail;
            }
            /*
             * Is this a variable or a fixed size dimension?
             */
            if (FUNC8(signature[i])) {
                frozen_size = -1;
            }
            else {
                frozen_size = (npy_intp)FUNC7(signature + i);
                if (frozen_size <= 0) {
                    parse_error = "expect dimension name or non-zero frozen size";
                    goto fail;
                }
            }
            /* Is this dimension flexible? */
            i_end = FUNC6(signature, i);
            can_ignore = (i_end > 0 && signature[i_end - 1] == '?');
            /*
             * Determine whether we already saw this dimension name,
             * get its index, and set its properties
             */
            for(ix = 0; ix < ufunc->core_num_dim_ix; ix++) {
                if (frozen_size > 0 ?
                    frozen_size == ufunc->core_dim_sizes[ix] :
                    FUNC9(signature + i, var_names[ix])) {
                    break;
                }
            }
            /*
             * If a new dimension, store its properties; if old, check consistency.
             */
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
            i = FUNC10(signature, i_end);
            if (signature[i] != ',' && signature[i] != ')') {
                parse_error = "expect ',' or ')'";
                goto fail;
            }
            if (signature[i] == ',')
            {
                i = FUNC10(signature, i + 1);
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

        i = FUNC10(signature, i + 1);
        if (cur_arg != ufunc->nin && cur_arg != ufunc->nargs) {
            /*
             * The list of input arguments (or output arguments) was
             * only read partially
             */
            if (signature[i] != ',') {
                parse_error = "expect ','";
                goto fail;
            }
            i = FUNC10(signature, i + 1);
        }
    }
    if (cur_arg != ufunc->nargs) {
        parse_error = "incomplete signature: not all arguments found";
        goto fail;
    }
    ufunc->core_dim_ixs = FUNC2(ufunc->core_dim_ixs,
            sizeof(int) * cur_core_dim);
    ufunc->core_dim_sizes = FUNC2(
            ufunc->core_dim_sizes,
            sizeof(npy_intp) * ufunc->core_num_dim_ix);
    ufunc->core_dim_flags = FUNC2(
            ufunc->core_dim_flags,
            sizeof(npy_uint32) * ufunc->core_num_dim_ix);

    /* check for trivial core-signature, e.g. "(),()->()" */
    if (cur_core_dim == 0) {
        ufunc->core_enabled = 0;
    }
    FUNC0((void*)var_names);
    return 0;

fail:
    FUNC0((void*)var_names);
    if (parse_error) {
        FUNC3(PyExc_ValueError,
                     "%s at position %d in \"%s\"",
                     parse_error, i, signature);
    }
    return -1;
}