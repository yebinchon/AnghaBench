#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  handshake_dgst; } ;
struct TYPE_7__ {int /*<<< orphan*/  session; TYPE_1__ s3; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ NID_md5_sha1 ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_FINAL_FINISH_MAC ; 
 int /*<<< orphan*/  SSL_R_NO_REQUIRED_DIGEST ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

size_t FUNC11(SSL *s, const char *sender, size_t len,
                             unsigned char *p)
{
    int ret;
    EVP_MD_CTX *ctx = NULL;

    if (!FUNC9(s, 0)) {
        /* SSLfatal() already called */
        return 0;
    }

    if (FUNC7(s->s3.handshake_dgst) != NID_md5_sha1) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 SSL_R_NO_REQUIRED_DIGEST);
        return 0;
    }

    ctx = FUNC4();
    if (ctx == NULL) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!FUNC2(ctx, s->s3.handshake_dgst)) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
        goto err;
    }

    ret = FUNC6(ctx);
    if (ret < 0) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
        goto err;
    }

    if (sender != NULL) {
        OSSL_PARAM digest_cmd_params[3];

        FUNC10(s->session, digest_cmd_params);

        if (FUNC1(ctx, sender, len) <= 0
            || FUNC5(ctx, digest_cmd_params) <= 0
            || FUNC0(ctx, p, NULL) <= 0) {
                FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                         ERR_R_INTERNAL_ERROR);
                ret = 0;
        }
    }

 err:
    FUNC3(ctx);

    return ret;
}