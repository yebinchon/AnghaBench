
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sgemv_ (char*,int const*,int const*,float const*,float const*,int const*,float const*,int const*,float const*,float*,int const*) ;

void sgemv (char *trans,
            const int *m, const int *n,
            const float *alpha,
            const float *A, const int *lda,
            const float *B, const int *incB,
            const float *beta,
            float *C, const int *incC)
{
    sgemv_(trans,m,n,alpha,A,lda,B,incB,beta,C,incC);
}
