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
typedef  int /*<<< orphan*/  X509_REQ ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  EVP_PKEY_DH ; 
 int /*<<< orphan*/  EVP_PKEY_EC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_F_X509_REQ_CHECK_PRIVATE_KEY ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_R_CANT_CHECK_DH_KEY ; 
 int /*<<< orphan*/  X509_R_KEY_TYPE_MISMATCH ; 
 int /*<<< orphan*/  X509_R_KEY_VALUES_MISMATCH ; 
 int /*<<< orphan*/  X509_R_UNKNOWN_KEY_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(X509_REQ *x, EVP_PKEY *k)
{
    EVP_PKEY *xk = NULL;
    int ok = 0;

    xk = FUNC3(x);
    switch (FUNC0(xk, k)) {
    case 1:
        ok = 1;
        break;
    case 0:
        FUNC4(X509_F_X509_REQ_CHECK_PRIVATE_KEY,
                X509_R_KEY_VALUES_MISMATCH);
        break;
    case -1:
        FUNC4(X509_F_X509_REQ_CHECK_PRIVATE_KEY, X509_R_KEY_TYPE_MISMATCH);
        break;
    case -2:
#ifndef OPENSSL_NO_EC
        if (FUNC2(k) == EVP_PKEY_EC) {
            FUNC4(X509_F_X509_REQ_CHECK_PRIVATE_KEY, ERR_R_EC_LIB);
            break;
        }
#endif
#ifndef OPENSSL_NO_DH
        if (FUNC2(k) == EVP_PKEY_DH) {
            /* No idea */
            FUNC4(X509_F_X509_REQ_CHECK_PRIVATE_KEY,
                    X509_R_CANT_CHECK_DH_KEY);
            break;
        }
#endif
        FUNC4(X509_F_X509_REQ_CHECK_PRIVATE_KEY, X509_R_UNKNOWN_KEY_TYPE);
    }

    FUNC1(xk);
    return ok;
}