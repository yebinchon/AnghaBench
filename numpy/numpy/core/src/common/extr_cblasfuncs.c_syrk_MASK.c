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
typedef  int npy_intp ;
typedef  int /*<<< orphan*/  npy_float ;
typedef  int /*<<< orphan*/  npy_double ;
typedef  int /*<<< orphan*/  npy_cfloat ;
typedef  int /*<<< orphan*/  npy_cdouble ;
typedef  enum CBLAS_TRANSPOSE { ____Placeholder_CBLAS_TRANSPOSE } CBLAS_TRANSPOSE ;
typedef  enum CBLAS_ORDER { ____Placeholder_CBLAS_ORDER } CBLAS_ORDER ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  CblasUpper ; 
#define  NPY_CDOUBLE 131 
#define  NPY_CFLOAT 130 
#define  NPY_DOUBLE 129 
#define  NPY_FLOAT 128 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int,int,void const*,int,int,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,int,int,float,void const*,int,float,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  oneD ; 
 int /*<<< orphan*/  oneF ; 
 int /*<<< orphan*/  zeroD ; 
 int /*<<< orphan*/  zeroF ; 

__attribute__((used)) static void
FUNC7(int typenum, enum CBLAS_ORDER order, enum CBLAS_TRANSPOSE trans,
     int n, int k,
     PyArrayObject *A, int lda, PyArrayObject *R)
{
    const void *Adata = FUNC0(A);
    void *Rdata = FUNC0(R);
    int ldc = FUNC1(R, 1) > 1 ? FUNC1(R, 1) : 1;

    npy_intp i;
    npy_intp j;

    switch (typenum) {
        case NPY_DOUBLE:
            FUNC4(order, CblasUpper, trans, n, k, 1.,
                        Adata, lda, 0., Rdata, ldc);

            for (i = 0; i < n; i++) {
                for (j = i + 1; j < n; j++) {
                    *((npy_double*)FUNC2(R, j, i)) =
                            *((npy_double*)FUNC2(R, i, j));
                }
            }
            break;
        case NPY_FLOAT:
            FUNC5(order, CblasUpper, trans, n, k, 1.f,
                        Adata, lda, 0.f, Rdata, ldc);

            for (i = 0; i < n; i++) {
                for (j = i + 1; j < n; j++) {
                    *((npy_float*)FUNC2(R, j, i)) =
                            *((npy_float*)FUNC2(R, i, j));
                }
            }
            break;
        case NPY_CDOUBLE:
            FUNC6(order, CblasUpper, trans, n, k, oneD,
                        Adata, lda, zeroD, Rdata, ldc);

            for (i = 0; i < n; i++) {
                for (j = i + 1; j < n; j++) {
                    *((npy_cdouble*)FUNC2(R, j, i)) =
                            *((npy_cdouble*)FUNC2(R, i, j));
                }
            }
            break;
        case NPY_CFLOAT:
            FUNC3(order, CblasUpper, trans, n, k, oneF,
                        Adata, lda, zeroF, Rdata, ldc);

            for (i = 0; i < n; i++) {
                for (j = i + 1; j < n; j++) {
                    *((npy_cfloat*)FUNC2(R, j, i)) =
                            *((npy_cfloat*)FUNC2(R, i, j));
                }
            }
            break;
    }
}