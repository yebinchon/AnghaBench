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
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  session_id_len; int /*<<< orphan*/ * session_id; int /*<<< orphan*/  xcghash_len; int /*<<< orphan*/ * xcghash; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * key; int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ KDF_SSHKDF ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_MISSING_KEY ; 
 int /*<<< orphan*/  PROV_R_MISSING_MESSAGE_DIGEST ; 
 int /*<<< orphan*/  PROV_R_MISSING_SESSION_ID ; 
 int /*<<< orphan*/  PROV_R_MISSING_TYPE ; 
 int /*<<< orphan*/  PROV_R_MISSING_XCGHASH ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *vctx, unsigned char *key,
                             size_t keylen)
{
    KDF_SSHKDF *ctx = (KDF_SSHKDF *)vctx;
    const EVP_MD *md = FUNC2(&ctx->digest);

    if (md == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    if (ctx->key == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_KEY);
        return 0;
    }
    if (ctx->xcghash == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_XCGHASH);
        return 0;
    }
    if (ctx->session_id == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_SESSION_ID);
        return 0;
    }
    if (ctx->type == 0) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_TYPE);
        return 0;
    }
    return FUNC1(md, ctx->key, ctx->key_len,
                  ctx->xcghash, ctx->xcghash_len,
                  ctx->session_id, ctx->session_id_len,
                  ctx->type, key, keylen);
}