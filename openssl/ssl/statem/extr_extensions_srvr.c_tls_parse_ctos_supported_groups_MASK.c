#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {int /*<<< orphan*/  peer_supportedgroups_len; int /*<<< orphan*/ * peer_supportedgroups; } ;
struct TYPE_7__ {TYPE_1__ ext; int /*<<< orphan*/  hit; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC6(SSL *s, PACKET *pkt, unsigned int context,
                                    X509 *x, size_t chainidx)
{
    PACKET supported_groups_list;

    /* Each group is 2 bytes and we must have at least 1. */
    if (!FUNC1(pkt, &supported_groups_list)
            || FUNC2(&supported_groups_list) == 0
            || (FUNC2(&supported_groups_list) % 2) != 0) {
        FUNC4(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (!s->hit || FUNC3(s)) {
        FUNC0(s->ext.peer_supportedgroups);
        s->ext.peer_supportedgroups = NULL;
        s->ext.peer_supportedgroups_len = 0;
        if (!FUNC5(&supported_groups_list,
                           &s->ext.peer_supportedgroups,
                           &s->ext.peer_supportedgroups_len)) {
            FUNC4(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PARSE_CTOS_SUPPORTED_GROUPS,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    return 1;
}