#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_7__ {scalar_t__ status_type; int status_expected; } ;
struct TYPE_8__ {TYPE_1__ ext; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_UNSUPPORTED_EXTENSION ; 
 unsigned int SSL_EXT_TLS1_3_CERTIFICATE_REQUEST ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_STOC_STATUS_REQUEST ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLSEXT_STATUSTYPE_ocsp ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC4(SSL *s, PACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{
    if (context == SSL_EXT_TLS1_3_CERTIFICATE_REQUEST) {
        /* We ignore this if the server sends a CertificateRequest */
        /* TODO(TLS1.3): Add support for this */
        return 1;
    }

    /*
     * MUST only be sent if we've requested a status
     * request message. In TLS <= 1.2 it must also be empty.
     */
    if (s->ext.status_type != TLSEXT_STATUSTYPE_ocsp) {
        FUNC2(s, SSL_AD_UNSUPPORTED_EXTENSION,
                 SSL_F_TLS_PARSE_STOC_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
        return 0;
    }
    if (!FUNC1(s) && FUNC0(pkt) > 0) {
        FUNC2(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_STOC_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (FUNC1(s)) {
        /* We only know how to handle this if it's for the first Certificate in
         * the chain. We ignore any other responses.
         */
        if (chainidx != 0)
            return 1;

        /* SSLfatal() already called */
        return FUNC3(s, pkt);
    }

    /* Set flag to expect CertificateStatus message */
    s->ext.status_expected = 1;

    return 1;
}