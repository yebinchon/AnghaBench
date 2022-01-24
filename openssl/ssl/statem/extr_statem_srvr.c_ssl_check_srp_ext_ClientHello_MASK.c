#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * login; int /*<<< orphan*/ * TLS_ext_srp_username_callback; } ;
struct TYPE_10__ {TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_2__ tmp; } ;
struct TYPE_13__ {TYPE_4__ srp_ctx; TYPE_3__ s3; } ;
struct TYPE_9__ {int algorithm_mkey; } ;
typedef  TYPE_5__ SSL ;

/* Variables and functions */
 int SSL3_AL_FATAL ; 
 int SSL_AD_UNKNOWN_PSK_IDENTITY ; 
 int SSL_AD_UNRECOGNIZED_NAME ; 
 int /*<<< orphan*/  SSL_F_SSL_CHECK_SRP_EXT_CLIENTHELLO ; 
 int /*<<< orphan*/  SSL_R_CLIENTHELLO_TLSEXT ; 
 int /*<<< orphan*/  SSL_R_PSK_IDENTITY_NOT_FOUND ; 
 int SSL_kSRP ; 
 int FUNC0 (TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(SSL *s)
{
    int ret;
    int al = SSL_AD_UNRECOGNIZED_NAME;

    if ((s->s3.tmp.new_cipher->algorithm_mkey & SSL_kSRP) &&
        (s->srp_ctx.TLS_ext_srp_username_callback != NULL)) {
        if (s->srp_ctx.login == NULL) {
            /*
             * RFC 5054 says SHOULD reject, we do so if There is no srp
             * login name
             */
            FUNC1(s, SSL_AD_UNKNOWN_PSK_IDENTITY,
                     SSL_F_SSL_CHECK_SRP_EXT_CLIENTHELLO,
                     SSL_R_PSK_IDENTITY_NOT_FOUND);
            return -1;
        } else {
            ret = FUNC0(s, &al);
            if (ret < 0)
                return 0;
            if (ret == SSL3_AL_FATAL) {
                FUNC1(s, al, SSL_F_SSL_CHECK_SRP_EXT_CLIENTHELLO,
                         al == SSL_AD_UNKNOWN_PSK_IDENTITY
                         ? SSL_R_PSK_IDENTITY_NOT_FOUND
                         : SSL_R_CLIENTHELLO_TLSEXT);
                return -1;
            }
        }
    }
    return 1;
}