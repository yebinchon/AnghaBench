#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_15__ {int cert_request; } ;
struct TYPE_16__ {TYPE_1__ tmp; } ;
struct TYPE_17__ {scalar_t__ post_handshake_auth; int pha_context_len; TYPE_2__ s3; int /*<<< orphan*/  certreqs_sent; int /*<<< orphan*/ * pha_context; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_EXT_TLS1_3_CERTIFICATE_REQUEST ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ SSL_PHA_REQUEST_PENDING ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPACKET_FLAGS_NON_ZERO_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC16 (TYPE_3__*,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC19(SSL *s, WPACKET *pkt)
{
    if (FUNC3(s)) {
        /* Send random context when doing post-handshake auth */
        if (s->post_handshake_auth == SSL_PHA_REQUEST_PENDING) {
            FUNC0(s->pha_context);
            s->pha_context_len = 32;
            if ((s->pha_context = FUNC1(s->pha_context_len)) == NULL
                    || FUNC2(s->pha_context, s->pha_context_len) <= 0
                    || !FUNC11(pkt, s->pha_context, s->pha_context_len)) {
                FUNC5(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
            /* reset the handshake hash back to just after the ClientFinished */
            if (!FUNC17(s)) {
                /* SSLfatal() already called */
                return 0;
            }
        } else {
            if (!FUNC7(pkt, 0)) {
                FUNC5(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        }

        if (!FUNC18(s, pkt,
                                      SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, NULL,
                                      0)) {
            /* SSLfatal() already called */
            return 0;
        }
        goto done;
    }

    /* get the list of acceptable cert types */
    if (!FUNC10(pkt)
        || !FUNC14(s, pkt) || !FUNC6(pkt)) {
        FUNC5(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (FUNC4(s)) {
        const uint16_t *psigs;
        size_t nl = FUNC16(s, 1, &psigs);

        if (!FUNC9(pkt)
                || !FUNC8(pkt, WPACKET_FLAGS_NON_ZERO_LENGTH)
                || !FUNC15(s, pkt, psigs, nl)
                || !FUNC6(pkt)) {
            FUNC5(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    if (!FUNC12(s, FUNC13(s), pkt)) {
        /* SSLfatal() already called */
        return 0;
    }

 done:
    s->certreqs_sent++;
    s->s3.tmp.cert_request = 1;
    return 1;
}