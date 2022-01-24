#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ kdf_type; size_t kdf_outlen; int /*<<< orphan*/  kdf_md; int /*<<< orphan*/  kdf_ukmlen; int /*<<< orphan*/  kdf_ukm; int /*<<< orphan*/  kdf_oid; scalar_t__ pad; } ;
struct TYPE_14__ {TYPE_5__* peerkey; TYPE_2__* pkey; TYPE_7__* data; } ;
struct TYPE_12__ {TYPE_3__* dh; } ;
struct TYPE_13__ {TYPE_4__ pkey; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pub_key; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dh; } ;
struct TYPE_10__ {TYPE_1__ pkey; } ;
typedef  TYPE_6__ EVP_PKEY_CTX ;
typedef  TYPE_7__ DH_PKEY_CTX ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  DH_F_PKEY_DH_DERIVE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DH_R_KEYS_NOT_SET ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EVP_PKEY_DH_KDF_NONE ; 
 scalar_t__ EVP_PKEY_DH_KDF_X9_42 ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t) ; 
 unsigned char* FUNC6 (size_t) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY_CTX *ctx, unsigned char *key,
                          size_t *keylen)
{
    int ret;
    DH *dh;
    DH_PKEY_CTX *dctx = ctx->data;
    BIGNUM *dhpub;
    if (!ctx->pkey || !ctx->peerkey) {
        FUNC4(DH_F_PKEY_DH_DERIVE, DH_R_KEYS_NOT_SET);
        return 0;
    }
    dh = ctx->pkey->pkey.dh;
    dhpub = ctx->peerkey->pkey.dh->pub_key;
    if (dctx->kdf_type == EVP_PKEY_DH_KDF_NONE) {
        if (key == NULL) {
            *keylen = FUNC3(dh);
            return 1;
        }
        if (dctx->pad)
            ret = FUNC2(key, dhpub, dh);
        else
            ret = FUNC1(key, dhpub, dh);
        if (ret < 0)
            return ret;
        *keylen = ret;
        return 1;
    }
#ifndef OPENSSL_NO_CMS
    else if (dctx->kdf_type == EVP_PKEY_DH_KDF_X9_42) {

        unsigned char *Z = NULL;
        size_t Zlen = 0;
        if (!dctx->kdf_outlen || !dctx->kdf_oid)
            return 0;
        if (key == NULL) {
            *keylen = dctx->kdf_outlen;
            return 1;
        }
        if (*keylen != dctx->kdf_outlen)
            return 0;
        ret = 0;
        Zlen = FUNC3(dh);
        Z = FUNC6(Zlen);
        if (Z == NULL) {
            goto err;
        }
        if (FUNC2(Z, dhpub, dh) <= 0)
            goto err;
        if (!FUNC0(key, *keylen, Z, Zlen, dctx->kdf_oid,
                          dctx->kdf_ukm, dctx->kdf_ukmlen, dctx->kdf_md))
            goto err;
        *keylen = dctx->kdf_outlen;
        ret = 1;
 err:
        FUNC5(Z, Zlen);
        return ret;
    }
#endif
    return 0;
}