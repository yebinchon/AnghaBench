#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  CMS_SignerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int EVP_PKEY_RSA_PSS ; 
 int NID_rsaEncryption ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSA_F_RSA_CMS_VERIFY ; 
 int /*<<< orphan*/  RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(CMS_SignerInfo *si)
{
    int nid, nid2;
    X509_ALGOR *alg;
    EVP_PKEY_CTX *pkctx = FUNC1(si);

    FUNC0(si, NULL, NULL, NULL, &alg);
    nid = FUNC3(alg->algorithm);
    if (nid == EVP_PKEY_RSA_PSS)
        return FUNC6(NULL, pkctx, alg, NULL);
    /* Only PSS allowed for PSS keys */
    if (FUNC5(pkctx)) {
        FUNC4(RSA_F_RSA_CMS_VERIFY, RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE);
        return 0;
    }
    if (nid == NID_rsaEncryption)
        return 1;
    /* Workaround for some implementation that use a signature OID */
    if (FUNC2(nid, NULL, &nid2)) {
        if (nid2 == NID_rsaEncryption)
            return 1;
    }
    return 0;
}