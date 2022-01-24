#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mode; int /*<<< orphan*/  info_len; int /*<<< orphan*/  info; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * key; int /*<<< orphan*/  salt_len; int /*<<< orphan*/  salt; int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ KDF_HKDF ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  EVP_KDF_HKDF_MODE_EXPAND_ONLY 130 
#define  EVP_KDF_HKDF_MODE_EXTRACT_AND_EXPAND 129 
#define  EVP_KDF_HKDF_MODE_EXTRACT_ONLY 128 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  PROV_R_MISSING_KEY ; 
 int /*<<< orphan*/  PROV_R_MISSING_MESSAGE_DIGEST ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *vctx, unsigned char *key, size_t keylen)
{
    KDF_HKDF *ctx = (KDF_HKDF *)vctx;
    const EVP_MD *md = FUNC4(&ctx->digest);

    if (md == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (ctx->key == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_KEY);
        return 0;
    }

    switch (ctx->mode) {
    case EVP_KDF_HKDF_MODE_EXTRACT_AND_EXPAND:
        return FUNC1(md, ctx->salt, ctx->salt_len, ctx->key,
                    ctx->key_len, ctx->info, ctx->info_len, key,
                    keylen);

    case EVP_KDF_HKDF_MODE_EXTRACT_ONLY:
        return FUNC3(md, ctx->salt, ctx->salt_len, ctx->key,
                            ctx->key_len, key, keylen);

    case EVP_KDF_HKDF_MODE_EXPAND_ONLY:
        return FUNC2(md, ctx->key, ctx->key_len, ctx->info,
                           ctx->info_len, key, keylen);

    default:
        return 0;
    }
}