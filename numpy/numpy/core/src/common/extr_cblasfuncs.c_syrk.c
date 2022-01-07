
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int npy_float ;
typedef int npy_double ;
typedef int npy_cfloat ;
typedef int npy_cdouble ;
typedef enum CBLAS_TRANSPOSE { ____Placeholder_CBLAS_TRANSPOSE } CBLAS_TRANSPOSE ;
typedef enum CBLAS_ORDER { ____Placeholder_CBLAS_ORDER } CBLAS_ORDER ;
typedef int PyArrayObject ;


 int CblasUpper ;




 void* PyArray_DATA (int *) ;
 int PyArray_DIM (int *,int) ;
 scalar_t__ PyArray_GETPTR2 (int *,int,int) ;
 int cblas_csyrk (int,int ,int,int,int,int ,void const*,int,int ,void*,int) ;
 int cblas_dsyrk (int,int ,int,int,int,int,void const*,int,int,void*,int) ;
 int cblas_ssyrk (int,int ,int,int,int,float,void const*,int,float,void*,int) ;
 int cblas_zsyrk (int,int ,int,int,int,int ,void const*,int,int ,void*,int) ;
 int oneD ;
 int oneF ;
 int zeroD ;
 int zeroF ;

__attribute__((used)) static void
syrk(int typenum, enum CBLAS_ORDER order, enum CBLAS_TRANSPOSE trans,
     int n, int k,
     PyArrayObject *A, int lda, PyArrayObject *R)
{
    const void *Adata = PyArray_DATA(A);
    void *Rdata = PyArray_DATA(R);
    int ldc = PyArray_DIM(R, 1) > 1 ? PyArray_DIM(R, 1) : 1;

    npy_intp i;
    npy_intp j;

    switch (typenum) {
        case 129:
            cblas_dsyrk(order, CblasUpper, trans, n, k, 1.,
                        Adata, lda, 0., Rdata, ldc);

            for (i = 0; i < n; i++) {
                for (j = i + 1; j < n; j++) {
                    *((npy_double*)PyArray_GETPTR2(R, j, i)) =
                            *((npy_double*)PyArray_GETPTR2(R, i, j));
                }
            }
            break;
        case 128:
            cblas_ssyrk(order, CblasUpper, trans, n, k, 1.f,
                        Adata, lda, 0.f, Rdata, ldc);

            for (i = 0; i < n; i++) {
                for (j = i + 1; j < n; j++) {
                    *((npy_float*)PyArray_GETPTR2(R, j, i)) =
                            *((npy_float*)PyArray_GETPTR2(R, i, j));
                }
            }
            break;
        case 131:
            cblas_zsyrk(order, CblasUpper, trans, n, k, oneD,
                        Adata, lda, zeroD, Rdata, ldc);

            for (i = 0; i < n; i++) {
                for (j = i + 1; j < n; j++) {
                    *((npy_cdouble*)PyArray_GETPTR2(R, j, i)) =
                            *((npy_cdouble*)PyArray_GETPTR2(R, i, j));
                }
            }
            break;
        case 130:
            cblas_csyrk(order, CblasUpper, trans, n, k, oneF,
                        Adata, lda, zeroF, Rdata, ldc);

            for (i = 0; i < n; i++) {
                for (j = i + 1; j < n; j++) {
                    *((npy_cfloat*)PyArray_GETPTR2(R, j, i)) =
                            *((npy_cfloat*)PyArray_GETPTR2(R, i, j));
                }
            }
            break;
    }
}
