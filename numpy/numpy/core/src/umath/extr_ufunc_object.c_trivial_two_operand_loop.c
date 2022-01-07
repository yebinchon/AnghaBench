
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_intp ;
typedef int (* PyUFuncGenericFunction ) (char**,scalar_t__*,scalar_t__*,void*) ;
typedef int PyArrayObject ;


 int NPY_BEGIN_THREADS_DEF ;
 int NPY_BEGIN_THREADS_THRESHOLDED (scalar_t__) ;
 int NPY_END_THREADS ;
 int NPY_UF_DBG_PRINT1 (char*,int) ;
 int PyArray_DESCR (int *) ;
 int PyArray_PREPARE_TRIVIAL_PAIR_ITERATION (int *,int *,scalar_t__,char*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ PyDataType_REFCHK (int ) ;

__attribute__((used)) static void
trivial_two_operand_loop(PyArrayObject **op,
                    PyUFuncGenericFunction innerloop,
                    void *innerloopdata)
{
    char *data[2];
    npy_intp count[2], stride[2];
    int needs_api;
    NPY_BEGIN_THREADS_DEF;

    needs_api = PyDataType_REFCHK(PyArray_DESCR(op[0])) ||
                PyDataType_REFCHK(PyArray_DESCR(op[1]));

    PyArray_PREPARE_TRIVIAL_PAIR_ITERATION(op[0], op[1],
                                            count[0],
                                            data[0], data[1],
                                            stride[0], stride[1]);
    count[1] = count[0];
    NPY_UF_DBG_PRINT1("two operand loop count %d\n", (int)count[0]);

    if (!needs_api) {
        NPY_BEGIN_THREADS_THRESHOLDED(count[0]);
    }

    innerloop(data, count, stride, innerloopdata);

    NPY_END_THREADS;
}
