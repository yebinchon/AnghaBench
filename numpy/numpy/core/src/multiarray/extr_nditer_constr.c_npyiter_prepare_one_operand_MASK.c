#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int npyiter_opitflags ;
typedef  int npy_uint32 ;
struct TYPE_14__ {int flags; int /*<<< orphan*/  byteorder; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NPY_BOOL ; 
 int NPY_ITEM_IS_POINTER ; 
 int NPY_ITEM_REFCOUNT ; 
 int NPY_ITER_ALIGNED ; 
 int NPY_ITER_ALLOCATE ; 
 int NPY_ITER_ARRAYMASK ; 
 int NPY_ITER_BUFFERED ; 
 int NPY_ITER_DELAY_BUFALLOC ; 
 int NPY_ITER_NBO ; 
 int NPY_ITER_REFS_OK ; 
 int NPY_ITER_VIRTUAL ; 
 int NPY_ITER_ZEROSIZE_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  NPY_NATIVE ; 
 int NPY_OP_ITFLAG_CAST ; 
 int NPY_OP_ITFLAG_READ ; 
 int NPY_OP_ITFLAG_WRITE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC15(PyArrayObject **op,
                        char **op_dataptr,
                        PyArray_Descr *op_request_dtype,
                        PyArray_Descr **op_dtype,
                        npy_uint32 flags,
                        npy_uint32 op_flags, npyiter_opitflags *op_itflags)
{
    /* NULL operands must be automatically allocated outputs */
    if (*op == NULL) {
        /* ALLOCATE or VIRTUAL should be enabled */
        if ((op_flags & (NPY_ITER_ALLOCATE|NPY_ITER_VIRTUAL)) == 0) {
            FUNC11(PyExc_ValueError,
                    "Iterator operand was NULL, but neither the "
                    "ALLOCATE nor the VIRTUAL flag was specified");
            return 0;
        }

        if (op_flags & NPY_ITER_ALLOCATE) {
            /* Writing should be enabled */
            if (!((*op_itflags) & NPY_OP_ITFLAG_WRITE)) {
                FUNC11(PyExc_ValueError,
                        "Automatic allocation was requested for an iterator "
                        "operand, but it wasn't flagged for writing");
                return 0;
            }
            /*
             * Reading should be disabled if buffering is enabled without
             * also enabling NPY_ITER_DELAY_BUFALLOC.  In all other cases,
             * the caller may initialize the allocated operand to a value
             * before beginning iteration.
             */
            if (((flags & (NPY_ITER_BUFFERED |
                            NPY_ITER_DELAY_BUFALLOC)) == NPY_ITER_BUFFERED) &&
                    ((*op_itflags) & NPY_OP_ITFLAG_READ)) {
                FUNC11(PyExc_ValueError,
                        "Automatic allocation was requested for an iterator "
                        "operand, and it was flagged as readable, but "
                        "buffering  without delayed allocation was enabled");
                return 0;
            }

            /* If a requested dtype was provided, use it, otherwise NULL */
            FUNC14(op_request_dtype);
            *op_dtype = op_request_dtype;
        }
        else {
            *op_dtype = NULL;
        }

        /* Specify bool if no dtype was requested for the mask */
        if (op_flags & NPY_ITER_ARRAYMASK) {
            if (*op_dtype == NULL) {
                *op_dtype = FUNC6(NPY_BOOL);
                if (*op_dtype == NULL) {
                    return 0;
                }
            }
        }

        *op_dataptr = NULL;

        return 1;
    }

    /* VIRTUAL operands must be NULL */
    if (op_flags & NPY_ITER_VIRTUAL) {
        FUNC11(PyExc_ValueError,
                "Iterator operand flag VIRTUAL was specified, "
                "but the operand was not NULL");
        return 0;
    }


    if (FUNC4(*op)) {

        if ((*op_itflags) & NPY_OP_ITFLAG_WRITE
            && FUNC8(*op, "operand array with iterator "
                                           "write flag set") < 0) {
            return 0;
        }
        if (!(flags & NPY_ITER_ZEROSIZE_OK) && FUNC10(*op) == 0) {
            FUNC11(PyExc_ValueError,
                    "Iteration of zero-sized operands is not enabled");
            return 0;
        }
        *op_dataptr = FUNC3(*op);
        /* PyArray_DESCR does not give us a reference */
        *op_dtype = FUNC5(*op);
        if (*op_dtype == NULL) {
            FUNC11(PyExc_ValueError,
                    "Iterator input operand has no dtype descr");
            return 0;
        }
        FUNC13(*op_dtype);
        /*
         * If references weren't specifically allowed, make sure there
         * are no references in the inputs or requested dtypes.
         */
        if (!(flags & NPY_ITER_REFS_OK)) {
            PyArray_Descr *dt = FUNC5(*op);
            if (((dt->flags & (NPY_ITEM_REFCOUNT |
                           NPY_ITEM_IS_POINTER)) != 0) ||
                    (dt != *op_dtype &&
                        (((*op_dtype)->flags & (NPY_ITEM_REFCOUNT |
                                             NPY_ITEM_IS_POINTER))) != 0)) {
                FUNC11(PyExc_TypeError,
                        "Iterator operand or requested dtype holds "
                        "references, but the REFS_OK flag was not enabled");
                return 0;
            }
        }
        /*
         * Checking whether casts are valid is done later, once the
         * final data types have been selected.  For now, just store the
         * requested type.
         */
        if (op_request_dtype != NULL) {
            /* We just have a borrowed reference to op_request_dtype */
            FUNC13(op_request_dtype);
            /* If the requested dtype is flexible, adapt it */
            op_request_dtype = FUNC2((PyObject *)(*op), FUNC5(*op),
                                                          op_request_dtype);
            if (op_request_dtype == NULL) {
                return 0;
            }

            /* Store the requested dtype */
            FUNC12(*op_dtype);
            *op_dtype = op_request_dtype;
        }

        /* Check if the operand is in the byte order requested */
        if (op_flags & NPY_ITER_NBO) {
            /* Check byte order */
            if (!FUNC9((*op_dtype)->byteorder)) {
                PyArray_Descr *nbo_dtype;

                /* Replace with a new descr which is in native byte order */
                nbo_dtype = FUNC7(*op_dtype, NPY_NATIVE);
                FUNC12(*op_dtype);
                *op_dtype = nbo_dtype;

                FUNC1("Iterator: Setting NPY_OP_ITFLAG_CAST "
                                    "because of NPY_ITER_NBO\n");
                /* Indicate that byte order or alignment needs fixing */
                *op_itflags |= NPY_OP_ITFLAG_CAST;
            }
        }
        /* Check if the operand is aligned */
        if (op_flags & NPY_ITER_ALIGNED) {
            /* Check alignment */
            if (!FUNC0(*op)) {
                FUNC1("Iterator: Setting NPY_OP_ITFLAG_CAST "
                                    "because of NPY_ITER_ALIGNED\n");
                *op_itflags |= NPY_OP_ITFLAG_CAST;
            }
        }
        /*
         * The check for NPY_ITER_CONTIG can only be done later,
         * once the final iteration order is settled.
         */
    }
    else {
        FUNC11(PyExc_ValueError,
                "Iterator inputs must be ndarrays");
        return 0;
    }

    return 1;
}