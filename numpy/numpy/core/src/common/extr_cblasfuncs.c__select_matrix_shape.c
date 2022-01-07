
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyArrayObject ;
typedef int MatrixShape ;


 int PyArray_DIM (int *,int) ;
 int PyArray_NDIM (int *) ;
 int _column ;
 int _matrix ;
 int _row ;
 int _scalar ;

__attribute__((used)) static MatrixShape
_select_matrix_shape(PyArrayObject *array)
{
    switch (PyArray_NDIM(array)) {
        case 0:
            return _scalar;
        case 1:
            if (PyArray_DIM(array, 0) > 1)
                return _column;
            return _scalar;
        case 2:
            if (PyArray_DIM(array, 0) > 1) {
                if (PyArray_DIM(array, 1) == 1)
                    return _column;
                else
                    return _matrix;
            }
            if (PyArray_DIM(array, 1) == 1)
                return _scalar;
            return _row;
    }
    return _matrix;
}
