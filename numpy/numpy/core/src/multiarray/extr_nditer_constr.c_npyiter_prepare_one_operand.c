
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int npyiter_opitflags ;
typedef int npy_uint32 ;
struct TYPE_14__ {int flags; int byteorder; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef int PyArrayObject ;


 int IsAligned (int *) ;
 int NPY_BOOL ;
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
 int NPY_IT_DBG_PRINT (char*) ;
 int NPY_NATIVE ;
 int NPY_OP_ITFLAG_CAST ;
 int NPY_OP_ITFLAG_READ ;
 int NPY_OP_ITFLAG_WRITE ;
 TYPE_1__* PyArray_AdaptFlexibleDType (int *,TYPE_1__*,TYPE_1__*) ;
 char* PyArray_BYTES (int *) ;
 scalar_t__ PyArray_Check (int *) ;
 TYPE_1__* PyArray_DESCR (int *) ;
 TYPE_1__* PyArray_DescrFromType (int ) ;
 TYPE_1__* PyArray_DescrNewByteorder (TYPE_1__*,int ) ;
 scalar_t__ PyArray_FailUnlessWriteable (int *,char*) ;
 int PyArray_ISNBO (int ) ;
 scalar_t__ PyArray_SIZE (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_INCREF (TYPE_1__*) ;
 int Py_XINCREF (TYPE_1__*) ;

__attribute__((used)) static int
npyiter_prepare_one_operand(PyArrayObject **op,
                        char **op_dataptr,
                        PyArray_Descr *op_request_dtype,
                        PyArray_Descr **op_dtype,
                        npy_uint32 flags,
                        npy_uint32 op_flags, npyiter_opitflags *op_itflags)
{

    if (*op == ((void*)0)) {

        if ((op_flags & (NPY_ITER_ALLOCATE|NPY_ITER_VIRTUAL)) == 0) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator operand was NULL, but neither the "
                    "ALLOCATE nor the VIRTUAL flag was specified");
            return 0;
        }

        if (op_flags & NPY_ITER_ALLOCATE) {

            if (!((*op_itflags) & NPY_OP_ITFLAG_WRITE)) {
                PyErr_SetString(PyExc_ValueError,
                        "Automatic allocation was requested for an iterator "
                        "operand, but it wasn't flagged for writing");
                return 0;
            }






            if (((flags & (NPY_ITER_BUFFERED |
                            NPY_ITER_DELAY_BUFALLOC)) == NPY_ITER_BUFFERED) &&
                    ((*op_itflags) & NPY_OP_ITFLAG_READ)) {
                PyErr_SetString(PyExc_ValueError,
                        "Automatic allocation was requested for an iterator "
                        "operand, and it was flagged as readable, but "
                        "buffering  without delayed allocation was enabled");
                return 0;
            }


            Py_XINCREF(op_request_dtype);
            *op_dtype = op_request_dtype;
        }
        else {
            *op_dtype = ((void*)0);
        }


        if (op_flags & NPY_ITER_ARRAYMASK) {
            if (*op_dtype == ((void*)0)) {
                *op_dtype = PyArray_DescrFromType(NPY_BOOL);
                if (*op_dtype == ((void*)0)) {
                    return 0;
                }
            }
        }

        *op_dataptr = ((void*)0);

        return 1;
    }


    if (op_flags & NPY_ITER_VIRTUAL) {
        PyErr_SetString(PyExc_ValueError,
                "Iterator operand flag VIRTUAL was specified, "
                "but the operand was not NULL");
        return 0;
    }


    if (PyArray_Check(*op)) {

        if ((*op_itflags) & NPY_OP_ITFLAG_WRITE
            && PyArray_FailUnlessWriteable(*op, "operand array with iterator "
                                           "write flag set") < 0) {
            return 0;
        }
        if (!(flags & NPY_ITER_ZEROSIZE_OK) && PyArray_SIZE(*op) == 0) {
            PyErr_SetString(PyExc_ValueError,
                    "Iteration of zero-sized operands is not enabled");
            return 0;
        }
        *op_dataptr = PyArray_BYTES(*op);

        *op_dtype = PyArray_DESCR(*op);
        if (*op_dtype == ((void*)0)) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator input operand has no dtype descr");
            return 0;
        }
        Py_INCREF(*op_dtype);




        if (!(flags & NPY_ITER_REFS_OK)) {
            PyArray_Descr *dt = PyArray_DESCR(*op);
            if (((dt->flags & (NPY_ITEM_REFCOUNT |
                           NPY_ITEM_IS_POINTER)) != 0) ||
                    (dt != *op_dtype &&
                        (((*op_dtype)->flags & (NPY_ITEM_REFCOUNT |
                                             NPY_ITEM_IS_POINTER))) != 0)) {
                PyErr_SetString(PyExc_TypeError,
                        "Iterator operand or requested dtype holds "
                        "references, but the REFS_OK flag was not enabled");
                return 0;
            }
        }





        if (op_request_dtype != ((void*)0)) {

            Py_INCREF(op_request_dtype);

            op_request_dtype = PyArray_AdaptFlexibleDType((PyObject *)(*op), PyArray_DESCR(*op),
                                                          op_request_dtype);
            if (op_request_dtype == ((void*)0)) {
                return 0;
            }


            Py_DECREF(*op_dtype);
            *op_dtype = op_request_dtype;
        }


        if (op_flags & NPY_ITER_NBO) {

            if (!PyArray_ISNBO((*op_dtype)->byteorder)) {
                PyArray_Descr *nbo_dtype;


                nbo_dtype = PyArray_DescrNewByteorder(*op_dtype, NPY_NATIVE);
                Py_DECREF(*op_dtype);
                *op_dtype = nbo_dtype;

                NPY_IT_DBG_PRINT("Iterator: Setting NPY_OP_ITFLAG_CAST "
                                    "because of NPY_ITER_NBO\n");

                *op_itflags |= NPY_OP_ITFLAG_CAST;
            }
        }

        if (op_flags & NPY_ITER_ALIGNED) {

            if (!IsAligned(*op)) {
                NPY_IT_DBG_PRINT("Iterator: Setting NPY_OP_ITFLAG_CAST "
                                    "because of NPY_ITER_ALIGNED\n");
                *op_itflags |= NPY_OP_ITFLAG_CAST;
            }
        }




    }
    else {
        PyErr_SetString(PyExc_ValueError,
                "Iterator inputs must be ndarrays");
        return 0;
    }

    return 1;
}
