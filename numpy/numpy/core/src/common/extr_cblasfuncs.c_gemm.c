
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum CBLAS_TRANSPOSE { ____Placeholder_CBLAS_TRANSPOSE } CBLAS_TRANSPOSE ;
typedef enum CBLAS_ORDER { ____Placeholder_CBLAS_ORDER } CBLAS_ORDER ;
typedef int PyArrayObject ;






 void* PyArray_DATA (int *) ;
 int PyArray_DIM (int *,int) ;
 int cblas_cgemm (int,int,int,int,int,int,int ,void const*,int,void const*,int,int ,void*,int) ;
 int cblas_dgemm (int,int,int,int,int,int,int,void const*,int,void const*,int,int,void*,int) ;
 int cblas_sgemm (int,int,int,int,int,int,float,void const*,int,void const*,int,float,void*,int) ;
 int cblas_zgemm (int,int,int,int,int,int,int ,void const*,int,void const*,int,int ,void*,int) ;
 int oneD ;
 int oneF ;
 int zeroD ;
 int zeroF ;

__attribute__((used)) static void
gemm(int typenum, enum CBLAS_ORDER order,
     enum CBLAS_TRANSPOSE transA, enum CBLAS_TRANSPOSE transB,
     int m, int n, int k,
     PyArrayObject *A, int lda, PyArrayObject *B, int ldb, PyArrayObject *R)
{
    const void *Adata = PyArray_DATA(A), *Bdata = PyArray_DATA(B);
    void *Rdata = PyArray_DATA(R);
    int ldc = PyArray_DIM(R, 1) > 1 ? PyArray_DIM(R, 1) : 1;

    switch (typenum) {
        case 129:
            cblas_dgemm(order, transA, transB, m, n, k, 1.,
                        Adata, lda, Bdata, ldb, 0., Rdata, ldc);
            break;
        case 128:
            cblas_sgemm(order, transA, transB, m, n, k, 1.f,
                        Adata, lda, Bdata, ldb, 0.f, Rdata, ldc);
            break;
        case 131:
            cblas_zgemm(order, transA, transB, m, n, k, oneD,
                        Adata, lda, Bdata, ldb, zeroD, Rdata, ldc);
            break;
        case 130:
            cblas_cgemm(order, transA, transB, m, n, k, oneF,
                        Adata, lda, Bdata, ldb, zeroF, Rdata, ldc);
            break;
    }
}
