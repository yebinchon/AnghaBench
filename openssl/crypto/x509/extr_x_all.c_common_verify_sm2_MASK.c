#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  req_info; TYPE_5__* sm2_id; TYPE_6__* signature; } ;
typedef  TYPE_2__ X509_REQ ;
struct TYPE_16__ {scalar_t__ type; int flags; scalar_t__ length; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  cert_info; TYPE_5__* sm2_id; TYPE_6__ signature; } ;
typedef  TYPE_3__ X509 ;
struct TYPE_15__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_1__* ameth; } ;
struct TYPE_11__ {scalar_t__ pkey_id; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  TYPE_4__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  TYPE_5__ ASN1_OCTET_STRING ;
typedef  TYPE_6__ ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASN1_R_INVALID_BIT_STRING_BITS_LEFT ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM ; 
 int /*<<< orphan*/  ASN1_R_WRONG_PUBLIC_KEY_TYPE ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_SM2 ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,size_t) ; 
 scalar_t__ V_ASN1_BIT_STRING ; 
 int /*<<< orphan*/  X509_CINF ; 
 int /*<<< orphan*/  X509_F_COMMON_VERIFY_SM2 ; 
 int /*<<< orphan*/  X509_REQ_INFO ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(void *data, EVP_PKEY *pkey,
                             int mdnid, int pknid, int req)
{
    X509 *x = NULL;
    X509_REQ *r = NULL;
    EVP_MD_CTX *ctx = NULL;
    unsigned char *buf_in = NULL;
    int ret = -1, inl = 0;
    size_t inll = 0;
    EVP_PKEY_CTX *pctx = NULL;
    const EVP_MD *type = FUNC12(mdnid);
    ASN1_BIT_STRING *signature = NULL;
    ASN1_OCTET_STRING *sm2_id = NULL;
    ASN1_VALUE *tbv = NULL;

    if (type == NULL) {
        FUNC14(X509_F_COMMON_VERIFY_SM2,
                ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM);
        goto err;
    }

    if (pkey == NULL) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_PASSED_NULL_PARAMETER);
        return -1;
    }

    if (req == 1) {
        r = (X509_REQ *)data;
        signature = r->signature;
        sm2_id = r->sm2_id;
        tbv = (ASN1_VALUE *)&r->req_info;
    } else {
        x = (X509 *)data;
        signature = &x->signature;
        sm2_id = x->sm2_id;
        tbv = (ASN1_VALUE *)&x->cert_info;
    }

    if (signature->type == V_ASN1_BIT_STRING && signature->flags & 0x7) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ASN1_R_INVALID_BIT_STRING_BITS_LEFT);
        return -1;
    }

    ctx = FUNC5();
    if (ctx == NULL) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* Check public key OID matches public key type */
    if (FUNC11(pknid) != pkey->ameth->pkey_id) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ASN1_R_WRONG_PUBLIC_KEY_TYPE);
        goto err;
    }

    if (!FUNC10(pkey, EVP_PKEY_SM2)) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        ret = 0;
        goto err;
    }
    pctx = FUNC8(pkey, NULL);
    if (pctx == NULL) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        ret = 0;
        goto err;
    }
    /* NOTE: we tolerate no actual ID, to provide maximum flexibility */
    if (sm2_id != NULL
            && FUNC9(pctx, sm2_id->data, sm2_id->length) != 1) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        ret = 0;
        goto err;
    }
    FUNC6(ctx, pctx);

    if (!FUNC3(ctx, NULL, type, NULL, pkey)) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        ret = 0;
        goto err;
    }

    inl = FUNC1(tbv, &buf_in,
                        req == 1 ?
                        FUNC0(X509_REQ_INFO) :
                        FUNC0(X509_CINF));
    if (inl <= 0) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if (buf_in == NULL) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    inll = inl;

    ret = FUNC2(ctx, signature->data,
                           (size_t)signature->length, buf_in, inl);
    if (ret <= 0) {
        FUNC14(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        goto err;
    }
    ret = 1;
 err:
    FUNC13(buf_in, inll);
    FUNC4(ctx);
    FUNC7(pctx);
    return ret;
}