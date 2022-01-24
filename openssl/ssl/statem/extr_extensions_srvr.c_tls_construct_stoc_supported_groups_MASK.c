#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_9__ {scalar_t__ group_id; } ;
struct TYPE_10__ {TYPE_1__ s3; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS ; 
 int /*<<< orphan*/  SSL_SECOP_CURVE_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLSEXT_TYPE_supported_groups ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__ const**,size_t*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 

EXT_RETURN FUNC8(SSL *s, WPACKET *pkt,
                                               unsigned int context, X509 *x,
                                               size_t chainidx)
{
    const uint16_t *groups;
    size_t numgroups, i, first = 1;

    /* s->s3.group_id is non zero if we accepted a key_share */
    if (s->s3.group_id == 0)
        return EXT_RETURN_NOT_SENT;

    /* Get our list of supported groups */
    FUNC5(s, &groups, &numgroups);
    if (numgroups == 0) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    /* Copy group ID if supported */
    for (i = 0; i < numgroups; i++) {
        uint16_t group = groups[i];

        if (FUNC7(s, group, FUNC0(s))
                && FUNC6(s, group, SSL_SECOP_CURVE_SUPPORTED)) {
            if (first) {
                /*
                 * Check if the client is already using our preferred group. If
                 * so we don't need to add this extension
                 */
                if (s->s3.group_id == group)
                    return EXT_RETURN_NOT_SENT;

                /* Add extension header */
                if (!FUNC3(pkt, TLSEXT_TYPE_supported_groups)
                           /* Sub-packet for supported_groups extension */
                        || !FUNC4(pkt)
                        || !FUNC4(pkt)) {
                    FUNC1(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                             ERR_R_INTERNAL_ERROR);
                    return EXT_RETURN_FAIL;
                }

                first = 0;
            }
            if (!FUNC3(pkt, group)) {
                    FUNC1(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                             ERR_R_INTERNAL_ERROR);
                    return EXT_RETURN_FAIL;
                }
        }
    }

    if (!FUNC2(pkt) || !FUNC2(pkt)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}