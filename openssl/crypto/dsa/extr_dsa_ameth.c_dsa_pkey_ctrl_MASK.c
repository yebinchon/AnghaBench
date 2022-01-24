#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
#define  ASN1_PKEY_CTRL_CMS_RI_TYPE 131 
#define  ASN1_PKEY_CTRL_CMS_SIGN 130 
#define  ASN1_PKEY_CTRL_DEFAULT_MD_NID 129 
#define  ASN1_PKEY_CTRL_PKCS7_SIGN 128 
 int CMS_RECIPINFO_NONE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NID_sha256 ; 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {
    case ASN1_PKEY_CTRL_PKCS7_SIGN:
        if (arg1 == 0) {
            int snid, hnid;
            X509_ALGOR *alg1, *alg2;
            FUNC5(arg2, NULL, &alg1, &alg2);
            if (alg1 == NULL || alg1->algorithm == NULL)
                return -1;
            hnid = FUNC4(alg1->algorithm);
            if (hnid == NID_undef)
                return -1;
            if (!FUNC2(&snid, hnid, FUNC1(pkey)))
                return -1;
            FUNC6(alg2, FUNC3(snid), V_ASN1_UNDEF, 0);
        }
        return 1;
#ifndef OPENSSL_NO_CMS
    case ASN1_PKEY_CTRL_CMS_SIGN:
        if (arg1 == 0) {
            int snid, hnid;
            X509_ALGOR *alg1, *alg2;
            FUNC0(arg2, NULL, NULL, &alg1, &alg2);
            if (alg1 == NULL || alg1->algorithm == NULL)
                return -1;
            hnid = FUNC4(alg1->algorithm);
            if (hnid == NID_undef)
                return -1;
            if (!FUNC2(&snid, hnid, FUNC1(pkey)))
                return -1;
            FUNC6(alg2, FUNC3(snid), V_ASN1_UNDEF, 0);
        }
        return 1;

    case ASN1_PKEY_CTRL_CMS_RI_TYPE:
        *(int *)arg2 = CMS_RECIPINFO_NONE;
        return 1;
#endif

    case ASN1_PKEY_CTRL_DEFAULT_MD_NID:
        *(int *)arg2 = NID_sha256;
        return 1;

    default:
        return -2;

    }

}