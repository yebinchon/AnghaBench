#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_ec_point_formats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

EXT_RETURN FUNC8(SSL *s, WPACKET *pkt,
                                            unsigned int context, X509 *x,
                                            size_t chainidx)
{
    const unsigned char *pformats;
    size_t num_formats;
    int reason, min_version, max_version;

    reason = FUNC5(s, &min_version, &max_version, NULL);
    if (reason != 0) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS, reason);
        return EXT_RETURN_FAIL;
    }
    if (!FUNC7(s, max_version))
        return EXT_RETURN_NOT_SENT;

    /* Add TLS extension ECPointFormats to the ClientHello message */
    FUNC6(s, &pformats, &num_formats);

    if (!FUNC2(pkt, TLSEXT_TYPE_ec_point_formats)
               /* Sub-packet for formats extension */
            || !FUNC3(pkt)
            || !FUNC4(pkt, pformats, num_formats)
            || !FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}