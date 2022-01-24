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
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int TLS1_3_VERSION ; 
 int TLSEXT_TYPE_supported_versions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 

EXT_RETURN FUNC6(SSL *s, WPACKET *pkt,
                                                 unsigned int context, X509 *x,
                                                 size_t chainidx)
{
    int currv, min_version, max_version, reason;

    reason = FUNC5(s, &min_version, &max_version, NULL);
    if (reason != 0) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS, reason);
        return EXT_RETURN_FAIL;
    }

    /*
     * Don't include this if we can't negotiate TLSv1.3. We can do a straight
     * comparison here because we will never be called in DTLS.
     */
    if (max_version < TLS1_3_VERSION)
        return EXT_RETURN_NOT_SENT;

    if (!FUNC2(pkt, TLSEXT_TYPE_supported_versions)
            || !FUNC3(pkt)
            || !FUNC4(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    for (currv = max_version; currv >= min_version; currv--) {
        if (!FUNC2(pkt, currv)) {
            FUNC0(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
    }
    if (!FUNC1(pkt) || !FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_VERSIONS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}