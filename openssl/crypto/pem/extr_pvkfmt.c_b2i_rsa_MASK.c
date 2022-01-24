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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PEM_F_B2I_RSA ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char const**,unsigned int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char const**) ; 

__attribute__((used)) static EVP_PKEY *FUNC14(const unsigned char **in,
                         unsigned int bitlen, int ispub)
{
    const unsigned char *pin = *in;
    EVP_PKEY *ret = NULL;
    BIGNUM *e = NULL, *n = NULL, *d = NULL;
    BIGNUM *p = NULL, *q = NULL, *dmp1 = NULL, *dmq1 = NULL, *iqmp = NULL;
    RSA *rsa = NULL;
    unsigned int nbyte, hnbyte;
    nbyte = (bitlen + 7) >> 3;
    hnbyte = (bitlen + 15) >> 4;
    rsa = FUNC8();
    ret = FUNC4();
    if (rsa == NULL || ret == NULL)
        goto memerr;
    e = FUNC1();
    if (e == NULL)
        goto memerr;
    if (!FUNC2(e, FUNC13(&pin)))
        goto memerr;
    if (!FUNC12(&pin, nbyte, &n))
        goto memerr;
    if (!ispub) {
        if (!FUNC12(&pin, hnbyte, &p))
            goto memerr;
        if (!FUNC12(&pin, hnbyte, &q))
            goto memerr;
        if (!FUNC12(&pin, hnbyte, &dmp1))
            goto memerr;
        if (!FUNC12(&pin, hnbyte, &dmq1))
            goto memerr;
        if (!FUNC12(&pin, hnbyte, &iqmp))
            goto memerr;
        if (!FUNC12(&pin, nbyte, &d))
            goto memerr;
        if (!FUNC10(rsa, p, q))
            goto memerr;
        p = q = NULL;
        if (!FUNC9(rsa, dmp1, dmq1, iqmp))
            goto memerr;
        dmp1 = dmq1 = iqmp = NULL;
    }
    if (!FUNC11(rsa, n, e, d))
        goto memerr;
    n = e = d = NULL;

    if (!FUNC5(ret, rsa))
        goto memerr;
    FUNC7(rsa);
    *in = pin;
    return ret;
 memerr:
    FUNC6(PEM_F_B2I_RSA, ERR_R_MALLOC_FAILURE);
    FUNC0(e);
    FUNC0(n);
    FUNC0(p);
    FUNC0(q);
    FUNC0(dmp1);
    FUNC0(dmq1);
    FUNC0(iqmp);
    FUNC0(d);
    FUNC7(rsa);
    FUNC3(ret);
    return NULL;
}