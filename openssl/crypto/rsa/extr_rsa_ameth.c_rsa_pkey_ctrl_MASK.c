#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_7__ {TYPE_1__* rsa; } ;
struct TYPE_8__ {TYPE_2__ pkey; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pss; } ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
#define  ASN1_PKEY_CTRL_CMS_ENVELOPE 133 
#define  ASN1_PKEY_CTRL_CMS_RI_TYPE 132 
#define  ASN1_PKEY_CTRL_CMS_SIGN 131 
#define  ASN1_PKEY_CTRL_DEFAULT_MD_NID 130 
#define  ASN1_PKEY_CTRL_PKCS7_ENCRYPT 129 
#define  ASN1_PKEY_CTRL_PKCS7_SIGN 128 
 int CMS_RECIPINFO_TRANS ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  NID_rsaEncryption ; 
 int NID_sha256 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_NULL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (void*) ; 
 int FUNC8 (void*) ; 
 int FUNC9 (void*) ; 
 int FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int*) ; 

__attribute__((used)) static int FUNC12(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    X509_ALGOR *alg = NULL;
    const EVP_MD *md;
    const EVP_MD *mgf1md;
    int min_saltlen;

    switch (op) {

    case ASN1_PKEY_CTRL_PKCS7_SIGN:
        if (arg1 == 0)
            FUNC3(arg2, NULL, NULL, &alg);
        break;

    case ASN1_PKEY_CTRL_PKCS7_ENCRYPT:
        if (FUNC6(pkey))
            return -2;
        if (arg1 == 0)
            FUNC2(arg2, &alg);
        break;
#ifndef OPENSSL_NO_CMS
    case ASN1_PKEY_CTRL_CMS_SIGN:
        if (arg1 == 0)
            return FUNC9(arg2);
        else if (arg1 == 1)
            return FUNC10(arg2);
        break;

    case ASN1_PKEY_CTRL_CMS_ENVELOPE:
        if (FUNC6(pkey))
            return -2;
        if (arg1 == 0)
            return FUNC8(arg2);
        else if (arg1 == 1)
            return FUNC7(arg2);
        break;

    case ASN1_PKEY_CTRL_CMS_RI_TYPE:
        if (FUNC6(pkey))
            return -2;
        *(int *)arg2 = CMS_RECIPINFO_TRANS;
        return 1;
#endif

    case ASN1_PKEY_CTRL_DEFAULT_MD_NID:
        if (pkey->pkey.rsa->pss != NULL) {
            if (!FUNC11(pkey->pkey.rsa->pss, &md, &mgf1md,
                                   &min_saltlen)) {
                FUNC4(0, ERR_R_INTERNAL_ERROR);
                return 0;
            }
            *(int *)arg2 = FUNC0(md);
            /* Return of 2 indicates this MD is mandatory */
            return 2;
        }
        *(int *)arg2 = NID_sha256;
        return 1;

    default:
        return -2;

    }

    if (alg)
        FUNC5(alg, FUNC1(NID_rsaEncryption), V_ASN1_NULL, 0);

    return 1;

}