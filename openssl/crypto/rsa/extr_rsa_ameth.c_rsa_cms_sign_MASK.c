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
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  CMS_SignerInfo ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  EVP_PKEY_RSA_PSS ; 
 int /*<<< orphan*/  NID_rsaEncryption ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int RSA_PKCS1_PADDING ; 
 int RSA_PKCS1_PSS_PADDING ; 
 int /*<<< orphan*/  V_ASN1_NULL ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(CMS_SignerInfo *si)
{
    int pad_mode = RSA_PKCS1_PADDING;
    X509_ALGOR *alg;
    EVP_PKEY_CTX *pkctx = FUNC1(si);
    ASN1_STRING *os = NULL;

    FUNC0(si, NULL, NULL, NULL, &alg);
    if (pkctx) {
        if (FUNC2(pkctx, &pad_mode) <= 0)
            return 0;
    }
    if (pad_mode == RSA_PKCS1_PADDING) {
        FUNC4(alg, FUNC3(NID_rsaEncryption), V_ASN1_NULL, 0);
        return 1;
    }
    /* We don't support it */
    if (pad_mode != RSA_PKCS1_PSS_PADDING)
        return 0;
    os = FUNC5(pkctx);
    if (!os)
        return 0;
    FUNC4(alg, FUNC3(EVP_PKEY_RSA_PSS), V_ASN1_SEQUENCE, os);
    return 1;
}