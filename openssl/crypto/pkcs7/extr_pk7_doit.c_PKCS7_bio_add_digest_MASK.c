#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_BIO_LIB ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_BIO_ADD_DIGEST ; 
 int /*<<< orphan*/  PKCS7_R_UNKNOWN_DIGEST_TYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(BIO **pbio, X509_ALGOR *alg)
{
    BIO *btmp;
    const EVP_MD *md;
    if ((btmp = FUNC2(FUNC0())) == NULL) {
        FUNC6(PKCS7_F_PKCS7_BIO_ADD_DIGEST, ERR_R_BIO_LIB);
        goto err;
    }

    md = FUNC5(alg->algorithm);
    if (md == NULL) {
        FUNC6(PKCS7_F_PKCS7_BIO_ADD_DIGEST, PKCS7_R_UNKNOWN_DIGEST_TYPE);
        goto err;
    }

    FUNC4(btmp, md);
    if (*pbio == NULL)
        *pbio = btmp;
    else if (!FUNC3(*pbio, btmp)) {
        FUNC6(PKCS7_F_PKCS7_BIO_ADD_DIGEST, ERR_R_BIO_LIB);
        goto err;
    }
    btmp = NULL;

    return 1;

 err:
    FUNC1(btmp);
    return 0;

}