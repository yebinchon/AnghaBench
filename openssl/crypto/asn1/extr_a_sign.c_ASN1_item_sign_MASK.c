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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_ITEM_SIGN ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

int FUNC5(const ASN1_ITEM *it, X509_ALGOR *algor1,
                   X509_ALGOR *algor2, ASN1_BIT_STRING *signature, void *asn,
                   EVP_PKEY *pkey, const EVP_MD *type)
{
    int rv;
    EVP_MD_CTX *ctx = FUNC4();

    if (ctx == NULL) {
        FUNC1(ASN1_F_ASN1_ITEM_SIGN, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!FUNC2(ctx, NULL, type, NULL, pkey)) {
        FUNC3(ctx);
        return 0;
    }

    rv = FUNC0(it, algor1, algor2, signature, asn, ctx);

    FUNC3(ctx);
    return rv;
}