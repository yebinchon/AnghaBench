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
struct TYPE_5__ {int /*<<< orphan*/  psk_kex_mode; } ;
struct TYPE_6__ {int options; TYPE_1__ ext; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_PSK_KEX_MODES ; 
 int SSL_OP_ALLOW_NO_DHE_KEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_KEX_MODE_FLAG_KE ; 
 int /*<<< orphan*/  TLSEXT_KEX_MODE_FLAG_KE_DHE ; 
 int /*<<< orphan*/  TLSEXT_KEX_MODE_KE ; 
 int /*<<< orphan*/  TLSEXT_KEX_MODE_KE_DHE ; 
 int /*<<< orphan*/  TLSEXT_TYPE_psk_kex_modes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

EXT_RETURN FUNC6(SSL *s, WPACKET *pkt,
                                            unsigned int context, X509 *x,
                                            size_t chainidx)
{
#ifndef OPENSSL_NO_TLS1_3
    int nodhe = s->options & SSL_OP_ALLOW_NO_DHE_KEX;

    if (!FUNC2(pkt, TLSEXT_TYPE_psk_kex_modes)
            || !FUNC4(pkt)
            || !FUNC5(pkt)
            || !FUNC3(pkt, TLSEXT_KEX_MODE_KE_DHE)
            || (nodhe && !FUNC3(pkt, TLSEXT_KEX_MODE_KE))
            || !FUNC1(pkt)
            || !FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_PSK_KEX_MODES, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    s->ext.psk_kex_mode = TLSEXT_KEX_MODE_FLAG_KE_DHE;
    if (nodhe)
        s->ext.psk_kex_mode |= TLSEXT_KEX_MODE_FLAG_KE;
#endif

    return EXT_RETURN_SENT;
}