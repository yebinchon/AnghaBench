
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum CBLAS_TRANSPOSE { ____Placeholder_CBLAS_TRANSPOSE } CBLAS_TRANSPOSE ;
typedef enum CBLAS_ORDER { ____Placeholder_CBLAS_ORDER } CBLAS_ORDER ;
typedef int PyArrayObject ;






 void* PyArray_DATA (int *) ;
 int PyArray_DIM (int *,int) ;
 int cblas_cgemv (int,int,int,int,int ,void const*,int,void const*,int,int ,void*,int) ;
 int cblas_dgemv (int,int,int,int,int,void const*,int,void const*,int,int,void*,int) ;
 int cblas_sgemv (int,int,int,int,float,void const*,int,void const*,int,float,void*,int) ;
 int cblas_zgemv (int,int,int,int,int ,void const*,int,void const*,int,int ,void*,int) ;
 int oneD ;
 int oneF ;
 int zeroD ;
 int zeroF ;

__attribute__((used)) static void
gemv(int typenum, enum CBLAS_ORDER order, enum CBLAS_TRANSPOSE trans,
     PyArrayObject *A, int lda, PyArrayObject *X, int incX,
     PyArrayObject *R)
{
    const void *Adata = PyArray_DATA(A), *Xdata = PyArray_DATA(X);
    void *Rdata = PyArray_DATA(R);

    int m = PyArray_DIM(A, 0), n = PyArray_DIM(A, 1);

    switch (typenum) {
        case 129:
            cblas_dgemv(order, trans, m, n, 1., Adata, lda, Xdata, incX,
                        0., Rdata, 1);
            break;
        case 128:
            cblas_sgemv(order, trans, m, n, 1.f, Adata, lda, Xdata, incX,
                        0.f, Rdata, 1);
            break;
        case 131:
            cblas_zgemv(order, trans, m, n, oneD, Adata, lda, Xdata, incX,
                        zeroD, Rdata, 1);
            break;
        case 130:
            cblas_cgemv(order, trans, m, n, oneF, Adata, lda, Xdata, incX,
                        zeroF, Rdata, 1);
            break;
    }
}
