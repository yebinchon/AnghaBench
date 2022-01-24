#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char type; int /*<<< orphan*/  session_id_len; int /*<<< orphan*/  session_id; int /*<<< orphan*/  xcghash_len; int /*<<< orphan*/  xcghash; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  digest; int /*<<< orphan*/  provctx; } ;
struct TYPE_8__ {scalar_t__ data_size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_2__ KDF_SSHKDF ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SSHKDF_SESSION_ID ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SSHKDF_TYPE ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SSHKDF_XCGHASH ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_VALUE_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC5(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KDF_SSHKDF *ctx = vctx;
    OPENSSL_CTX *provctx = FUNC2(ctx->provctx);
    int t;

    if (!FUNC3(&ctx->digest, params, provctx))
        return 0;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_KEY)) != NULL)
        if (!FUNC4(&ctx->key, &ctx->key_len, p))
            return 0;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_SSHKDF_XCGHASH))
        != NULL)
        if (!FUNC4(&ctx->xcghash, &ctx->xcghash_len, p))
            return 0;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_SSHKDF_SESSION_ID))
        != NULL)
        if (!FUNC4(&ctx->session_id, &ctx->session_id_len, p))
            return 0;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_SSHKDF_TYPE))
        != NULL) {
        if (p->data == NULL || p->data_size == 0)
            return 0;
        t = *(unsigned char *)p->data;
        if (t < 65 || t > 70) {
            FUNC0(ERR_LIB_PROV, PROV_R_VALUE_ERROR);
            return 0;
        }
        ctx->type = (char)t;
    }
    return 1;
}