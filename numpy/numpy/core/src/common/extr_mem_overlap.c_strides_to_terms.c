
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ a; int ub; } ;
typedef TYPE_1__ diophantine_term_t ;
typedef int PyArrayObject ;


 int PyArray_DIM (int *,int) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_STRIDE (int *,int) ;

__attribute__((used)) static int
strides_to_terms(PyArrayObject *arr, diophantine_term_t *terms,
                 unsigned int *nterms, int skip_empty)
{
    int i;

    for (i = 0; i < PyArray_NDIM(arr); ++i) {
        if (skip_empty) {
            if (PyArray_DIM(arr, i) <= 1 || PyArray_STRIDE(arr, i) == 0) {
                continue;
            }
        }

        terms[*nterms].a = PyArray_STRIDE(arr, i);

        if (terms[*nterms].a < 0) {
            terms[*nterms].a = -terms[*nterms].a;
        }

        if (terms[*nterms].a < 0) {

            return 1;
        }

        terms[*nterms].ub = PyArray_DIM(arr, i) - 1;
        ++*nterms;
    }

    return 0;
}
