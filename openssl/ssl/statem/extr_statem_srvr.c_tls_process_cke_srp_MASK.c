#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  login; int /*<<< orphan*/ * A; int /*<<< orphan*/  N; } ;
struct TYPE_9__ {TYPE_2__* session; TYPE_1__ srp_ctx; } ;
struct TYPE_8__ {int /*<<< orphan*/ * srp_username; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char const*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const**,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_CKE_SRP ; 
 int /*<<< orphan*/  SSL_R_BAD_SRP_A_LENGTH ; 
 int /*<<< orphan*/  SSL_R_BAD_SRP_PARAMETERS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(SSL *s, PACKET *pkt)
{
#ifndef OPENSSL_NO_SRP
    unsigned int i;
    const unsigned char *data;

    if (!FUNC6(pkt, &i)
        || !FUNC5(pkt, &data, i)) {
        FUNC7(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_SRP,
                 SSL_R_BAD_SRP_A_LENGTH);
        return 0;
    }
    if ((s->srp_ctx.A = FUNC0(data, i, NULL)) == NULL) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_SRP,
                 ERR_R_BN_LIB);
        return 0;
    }
    if (FUNC2(s->srp_ctx.A, s->srp_ctx.N) >= 0 || FUNC1(s->srp_ctx.A)) {
        FUNC7(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_CKE_SRP,
                 SSL_R_BAD_SRP_PARAMETERS);
        return 0;
    }
    FUNC3(s->session->srp_username);
    s->session->srp_username = FUNC4(s->srp_ctx.login);
    if (s->session->srp_username == NULL) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_SRP,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!FUNC8(s)) {
        /* SSLfatal() already called */
        return 0;
    }

    return 1;
#else
    /* Should never happen */
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_SRP,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}