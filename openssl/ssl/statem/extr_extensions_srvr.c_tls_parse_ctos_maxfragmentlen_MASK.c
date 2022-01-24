#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_8__ {TYPE_2__* session; scalar_t__ hit; } ;
struct TYPE_6__ {unsigned int max_fragment_len_mode; } ;
struct TYPE_7__ {TYPE_1__ ext; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(SSL *s, PACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{
    unsigned int value;

    if (FUNC2(pkt) != 1 || !FUNC1(pkt, &value)) {
        FUNC3(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }

    /* Received |value| should be a valid max-fragment-length code. */
    if (!FUNC0(value)) {
        FUNC3(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN,
                 SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH);
        return 0;
    }

    /*
     * RFC 6066:  The negotiated length applies for the duration of the session
     * including session resumptions.
     * We should receive the same code as in resumed session !
     */
    if (s->hit && s->session->ext.max_fragment_len_mode != value) {
        FUNC3(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PARSE_CTOS_MAXFRAGMENTLEN,
                 SSL_R_SSL3_EXT_INVALID_MAX_FRAGMENT_LENGTH);
        return 0;
    }

    /*
     * Store it in session, so it'll become binding for us
     * and we'll include it in a next Server Hello.
     */
    s->session->ext.max_fragment_len_mode = value;
    return 1;
}