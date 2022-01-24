#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_11__ {int /*<<< orphan*/ * tsa; } ;
struct TYPE_10__ {int flags; unsigned char* imprint; unsigned int imprint_len; int /*<<< orphan*/ * tsa_name; int /*<<< orphan*/  nonce; int /*<<< orphan*/  data; int /*<<< orphan*/ * md_alg; int /*<<< orphan*/  policy; int /*<<< orphan*/  store; int /*<<< orphan*/  certs; } ;
typedef  TYPE_1__ TS_VERIFY_CTX ;
typedef  TYPE_2__ TS_TST_INFO ;
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  GENERAL_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  TS_F_INT_TS_RESP_VERIFY_TOKEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TS_R_TSA_NAME_MISMATCH ; 
 int /*<<< orphan*/  TS_R_TSA_UNTRUSTED ; 
 int /*<<< orphan*/  TS_R_UNSUPPORTED_VERSION ; 
 int FUNC2 (TYPE_2__*) ; 
 int TS_VFY_DATA ; 
 int TS_VFY_IMPRINT ; 
 int TS_VFY_NONCE ; 
 int TS_VFY_POLICY ; 
 int TS_VFY_SIGNATURE ; 
 int TS_VFY_SIGNER ; 
 int TS_VFY_TSA_NAME ; 
 int TS_VFY_VERSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,unsigned int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ **,unsigned char**,unsigned int*) ; 

__attribute__((used)) static int FUNC11(TS_VERIFY_CTX *ctx,
                                    PKCS7 *token, TS_TST_INFO *tst_info)
{
    X509 *signer = NULL;
    GENERAL_NAME *tsa_name = tst_info->tsa;
    X509_ALGOR *md_alg = NULL;
    unsigned char *imprint = NULL;
    unsigned imprint_len = 0;
    int ret = 0;
    int flags = ctx->flags;

    /* Some options require us to also check the signature */
    if (((flags & TS_VFY_SIGNER) && tsa_name != NULL)
            || (flags & TS_VFY_TSA_NAME)) {
        flags |= TS_VFY_SIGNATURE;
    }

    if ((flags & TS_VFY_SIGNATURE)
        && !FUNC1(token, ctx->certs, ctx->store, &signer))
        goto err;
    if ((flags & TS_VFY_VERSION)
        && FUNC2(tst_info) != 1) {
        FUNC3(TS_F_INT_TS_RESP_VERIFY_TOKEN, TS_R_UNSUPPORTED_VERSION);
        goto err;
    }
    if ((flags & TS_VFY_POLICY)
        && !FUNC8(ctx->policy, tst_info))
        goto err;
    if ((flags & TS_VFY_IMPRINT)
        && !FUNC6(ctx->md_alg, ctx->imprint, ctx->imprint_len,
                              tst_info))
        goto err;
    if ((flags & TS_VFY_DATA)
        && (!FUNC10(ctx->data, tst_info,
                                &md_alg, &imprint, &imprint_len)
            || !FUNC6(md_alg, imprint, imprint_len, tst_info)))
        goto err;
    if ((flags & TS_VFY_NONCE)
        && !FUNC7(ctx->nonce, tst_info))
        goto err;
    if ((flags & TS_VFY_SIGNER)
        && tsa_name && !FUNC9(tsa_name, signer)) {
        FUNC3(TS_F_INT_TS_RESP_VERIFY_TOKEN, TS_R_TSA_NAME_MISMATCH);
        goto err;
    }
    if ((flags & TS_VFY_TSA_NAME)
        && !FUNC9(ctx->tsa_name, signer)) {
        FUNC3(TS_F_INT_TS_RESP_VERIFY_TOKEN, TS_R_TSA_UNTRUSTED);
        goto err;
    }
    ret = 1;

 err:
    FUNC5(signer);
    FUNC4(md_alg);
    FUNC0(imprint);
    return ret;
}