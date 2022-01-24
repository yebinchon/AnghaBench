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
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_7__ {int /*<<< orphan*/  status_expected; } ;
struct TYPE_8__ {TYPE_1__ ext; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 unsigned int SSL_EXT_TLS1_3_CERTIFICATE_REQUEST ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_STOC_STATUS_REQUEST ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_status_request ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

EXT_RETURN FUNC6(SSL *s, WPACKET *pkt,
                                             unsigned int context, X509 *x,
                                             size_t chainidx)
{
    /* We don't currently support this extension inside a CertificateRequest */
    if (context == SSL_EXT_TLS1_3_CERTIFICATE_REQUEST)
        return EXT_RETURN_NOT_SENT;

    if (!s->ext.status_expected)
        return EXT_RETURN_NOT_SENT;

    if (FUNC0(s) && chainidx != 0)
        return EXT_RETURN_NOT_SENT;

    if (!FUNC3(pkt, TLSEXT_TYPE_status_request)
            || !FUNC4(pkt)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_STATUS_REQUEST, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    /*
     * In TLSv1.3 we include the certificate status itself. In <= TLSv1.2 we
     * send back an empty extension, with the certificate status appearing as a
     * separate message
     */
    if (FUNC0(s) && !FUNC5(s, pkt)) {
       /* SSLfatal() already called */
       return EXT_RETURN_FAIL;
    }
    if (!FUNC2(pkt)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_STATUS_REQUEST, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}