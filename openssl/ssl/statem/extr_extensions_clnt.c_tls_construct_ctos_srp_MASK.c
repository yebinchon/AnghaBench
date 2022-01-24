#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_5__ {int /*<<< orphan*/ * login; } ;
struct TYPE_6__ {TYPE_1__ srp_ctx; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_SRP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_srp ; 
 int /*<<< orphan*/  WPACKET_FLAGS_NON_ZERO_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

EXT_RETURN FUNC8(SSL *s, WPACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{
    /* Add SRP username if there is one */
    if (s->srp_ctx.login == NULL)
        return EXT_RETURN_NOT_SENT;

    if (!FUNC3(pkt, TLSEXT_TYPE_srp)
               /* Sub-packet for SRP extension */
            || !FUNC5(pkt)
            || !FUNC6(pkt)
               /* login must not be zero...internal error if so */
            || !FUNC4(pkt, WPACKET_FLAGS_NON_ZERO_LENGTH)
            || !FUNC2(pkt, s->srp_ctx.login,
                               FUNC7(s->srp_ctx.login))
            || !FUNC1(pkt)
            || !FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_SRP,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}