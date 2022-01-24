#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum CBLAS_TRANSPOSE { ____Placeholder_CBLAS_TRANSPOSE } CBLAS_TRANSPOSE ;
typedef  enum CBLAS_ORDER { ____Placeholder_CBLAS_ORDER } CBLAS_ORDER ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
#define  NPY_CDOUBLE 131 
#define  NPY_CFLOAT 130 
#define  NPY_DOUBLE 129 
#define  NPY_FLOAT 128 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int /*<<< orphan*/ ,void const*,int,void const*,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int,void const*,int,void const*,int,int,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,float,void const*,int,void const*,int,float,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int /*<<< orphan*/ ,void const*,int,void const*,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  oneD ; 
 int /*<<< orphan*/  oneF ; 
 int /*<<< orphan*/  zeroD ; 
 int /*<<< orphan*/  zeroF ; 

__attribute__((used)) static void
FUNC6(int typenum, enum CBLAS_ORDER order, enum CBLAS_TRANSPOSE trans,
     PyArrayObject *A, int lda, PyArrayObject *X, int incX,
     PyArrayObject *R)
{
    const void *Adata = FUNC0(A), *Xdata = FUNC0(X);
    void *Rdata = FUNC0(R);

    int m = FUNC1(A, 0), n = FUNC1(A, 1);

    switch (typenum) {
        case NPY_DOUBLE:
            FUNC3(order, trans, m, n, 1., Adata, lda, Xdata, incX,
                        0., Rdata, 1);
            break;
        case NPY_FLOAT:
            FUNC4(order, trans, m, n, 1.f, Adata, lda, Xdata, incX,
                        0.f, Rdata, 1);
            break;
        case NPY_CDOUBLE:
            FUNC5(order, trans, m, n, oneD, Adata, lda, Xdata, incX,
                        zeroD, Rdata, 1);
            break;
        case NPY_CFLOAT:
            FUNC2(order, trans, m, n, oneF, Adata, lda, Xdata, incX,
                        zeroF, Rdata, 1);
            break;
    }
}