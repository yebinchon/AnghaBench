#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
struct TYPE_12__ {scalar_t__ flags; TYPE_4__* subject_cert; TYPE_2__* subject_req; } ;
typedef  TYPE_5__ X509V3_CTX ;
struct TYPE_10__ {int /*<<< orphan*/ * key; } ;
struct TYPE_11__ {TYPE_3__ cert_info; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pubkey; } ;
struct TYPE_9__ {TYPE_1__ req_info; } ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 scalar_t__ CTX_TEST ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int,unsigned char*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  X509V3_F_S2I_SKEY_ID ; 
 int /*<<< orphan*/  X509V3_R_NO_PUBLIC_KEY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_5__*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static ASN1_OCTET_STRING *FUNC9(X509V3_EXT_METHOD *method,
                                      X509V3_CTX *ctx, char *str)
{
    ASN1_OCTET_STRING *oct;
    X509_PUBKEY *pubkey;
    const unsigned char *pk;
    int pklen;
    unsigned char pkey_dig[EVP_MAX_MD_SIZE];
    unsigned int diglen;

    if (FUNC8(str, "hash"))
        return FUNC7(method, ctx, str);

    if ((oct = FUNC1()) == NULL) {
        FUNC5(X509V3_F_S2I_SKEY_ID, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (ctx && (ctx->flags == CTX_TEST))
        return oct;

    if (!ctx || (!ctx->subject_req && !ctx->subject_cert)) {
        FUNC5(X509V3_F_S2I_SKEY_ID, X509V3_R_NO_PUBLIC_KEY);
        goto err;
    }

    if (ctx->subject_req)
        pubkey = ctx->subject_req->req_info.pubkey;
    else
        pubkey = ctx->subject_cert->cert_info.key;

    if (pubkey == NULL) {
        FUNC5(X509V3_F_S2I_SKEY_ID, X509V3_R_NO_PUBLIC_KEY);
        goto err;
    }

    FUNC6(NULL, &pk, &pklen, NULL, pubkey);

    if (!FUNC3(pk, pklen, pkey_dig, &diglen, FUNC4(), NULL))
        goto err;

    if (!FUNC2(oct, pkey_dig, diglen)) {
        FUNC5(X509V3_F_S2I_SKEY_ID, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    return oct;

 err:
    FUNC0(oct);
    return NULL;
}