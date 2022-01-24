#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_2__ X509_ALGOR ;
struct TYPE_15__ {scalar_t__ type; int flags; scalar_t__ length; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_1__* ameth; } ;
struct TYPE_12__ {int (* item_verify ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,TYPE_2__*,TYPE_4__*,TYPE_3__*) ;scalar_t__ pkey_id; } ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;
typedef  TYPE_4__ ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_ITEM_VERIFY ; 
 int /*<<< orphan*/  ASN1_R_INVALID_BIT_STRING_BITS_LEFT ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM ; 
 int /*<<< orphan*/  ASN1_R_WRONG_PUBLIC_KEY_TYPE ; 
 int FUNC0 (void*,unsigned char**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,size_t) ; 
 scalar_t__ V_ASN1_BIT_STRING ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,TYPE_2__*,TYPE_4__*,TYPE_3__*) ; 

int FUNC12(const ASN1_ITEM *it, X509_ALGOR *a,
                     ASN1_BIT_STRING *signature, void *asn, EVP_PKEY *pkey)
{
    EVP_MD_CTX *ctx = NULL;
    unsigned char *buf_in = NULL;
    int ret = -1, inl = 0;
    int mdnid, pknid;
    size_t inll = 0;

    if (pkey == NULL) {
        FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_PASSED_NULL_PARAMETER);
        return -1;
    }

    if (signature->type == V_ASN1_BIT_STRING && signature->flags & 0x7) {
        FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ASN1_R_INVALID_BIT_STRING_BITS_LEFT);
        return -1;
    }

    ctx = FUNC5();
    if (ctx == NULL) {
        FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* Convert signature OID into digest and public key OIDs */
    if (!FUNC8(FUNC9(a->algorithm), &mdnid, &pknid)) {
        FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM);
        goto err;
    }
    if (mdnid == NID_undef) {
        if (pkey->ameth == NULL || pkey->ameth->item_verify == NULL) {
            FUNC1(ASN1_F_ASN1_ITEM_VERIFY,
                    ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM);
            goto err;
        }
        ret = pkey->ameth->item_verify(ctx, it, asn, a, signature, pkey);
        /*
         * Return value of 2 means carry on, anything else means we exit
         * straight away: either a fatal error of the underlying verification
         * routine handles all verification.
         */
        if (ret != 2)
            goto err;
        ret = -1;
    } else {
        const EVP_MD *type = FUNC7(mdnid);

        if (type == NULL) {
            FUNC1(ASN1_F_ASN1_ITEM_VERIFY,
                    ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM);
            goto err;
        }

        /* Check public key OID matches public key type */
        if (FUNC6(pknid) != pkey->ameth->pkey_id) {
            FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ASN1_R_WRONG_PUBLIC_KEY_TYPE);
            goto err;
        }

        if (!FUNC3(ctx, NULL, type, NULL, pkey)) {
            FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_EVP_LIB);
            ret = 0;
            goto err;
        }
    }

    inl = FUNC0(asn, &buf_in, it);
    if (inl <= 0) {
        FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if (buf_in == NULL) {
        FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    inll = inl;

    ret = FUNC2(ctx, signature->data, (size_t)signature->length,
                           buf_in, inl);
    if (ret <= 0) {
        FUNC1(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_EVP_LIB);
        goto err;
    }
    ret = 1;
 err:
    FUNC10(buf_in, inll);
    FUNC4(ctx);
    return ret;
}