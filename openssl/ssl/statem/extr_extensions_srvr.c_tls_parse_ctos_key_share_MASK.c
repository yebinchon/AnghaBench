#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_10__ {unsigned int group_id; int /*<<< orphan*/ * peer_tmp; } ;
struct TYPE_9__ {int psk_kex_mode; } ;
struct TYPE_11__ {TYPE_2__ s3; TYPE_1__ ext; scalar_t__ hit; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_MISSING_EXTENSION ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_CTOS_KEY_SHARE ; 
 int /*<<< orphan*/  SSL_R_BAD_ECPOINT ; 
 int /*<<< orphan*/  SSL_R_BAD_KEY_SHARE ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION ; 
 int /*<<< orphan*/  SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLSEXT_KEX_MODE_FLAG_KE_DHE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,unsigned int,int /*<<< orphan*/  const*,size_t,int) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/  const**,size_t*) ; 

int FUNC11(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                             size_t chainidx)
{
#ifndef OPENSSL_NO_TLS1_3
    unsigned int group_id;
    PACKET key_share_list, encoded_pt;
    const uint16_t *clntgroups, *srvrgroups;
    size_t clnt_num_groups, srvr_num_groups;
    int found = 0;

    if (s->hit && (s->ext.psk_kex_mode & TLSEXT_KEX_MODE_FLAG_KE_DHE) == 0)
        return 1;

    /* Sanity check */
    if (s->s3.peer_tmp != NULL) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!FUNC1(pkt, &key_share_list)) {
        FUNC6(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    /* Get our list of supported groups */
    FUNC10(s, &srvrgroups, &srvr_num_groups);
    /* Get the clients list of supported groups. */
    FUNC9(s, &clntgroups, &clnt_num_groups);
    if (clnt_num_groups == 0) {
        /*
         * This can only happen if the supported_groups extension was not sent,
         * because we verify that the length is non-zero when we process that
         * extension.
         */
        FUNC6(s, SSL_AD_MISSING_EXTENSION, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                 SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION);
        return 0;
    }

    if (s->s3.group_id != 0 && FUNC5(&key_share_list) == 0) {
        /*
         * If we set a group_id already, then we must have sent an HRR
         * requesting a new key_share. If we haven't got one then that is an
         * error
         */
        FUNC6(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                 SSL_R_BAD_KEY_SHARE);
        return 0;
    }

    while (FUNC5(&key_share_list) > 0) {
        if (!FUNC4(&key_share_list, &group_id)
                || !FUNC3(&key_share_list, &encoded_pt)
                || FUNC5(&encoded_pt) == 0) {
            FUNC6(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                     SSL_R_LENGTH_MISMATCH);
            return 0;
        }

        /*
         * If we already found a suitable key_share we loop through the
         * rest to verify the structure, but don't process them.
         */
        if (found)
            continue;

        /*
         * If we sent an HRR then the key_share sent back MUST be for the group
         * we requested, and must be the only key_share sent.
         */
        if (s->s3.group_id != 0
                && (group_id != s->s3.group_id
                    || FUNC5(&key_share_list) != 0)) {
            FUNC6(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_CTOS_KEY_SHARE, SSL_R_BAD_KEY_SHARE);
            return 0;
        }

        /* Check if this share is in supported_groups sent from client */
        if (!FUNC7(s, group_id, clntgroups, clnt_num_groups, 0)) {
            FUNC6(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_CTOS_KEY_SHARE, SSL_R_BAD_KEY_SHARE);
            return 0;
        }

        /* Check if this share is for a group we can use */
        if (!FUNC7(s, group_id, srvrgroups, srvr_num_groups, 1)) {
            /* Share not suitable */
            continue;
        }

        if ((s->s3.peer_tmp = FUNC8(group_id)) == NULL) {
            FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_KEY_SHARE,
                   SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS);
            return 0;
        }

        s->s3.group_id = group_id;

        if (!FUNC0(s->s3.peer_tmp,
                FUNC2(&encoded_pt),
                FUNC5(&encoded_pt))) {
            FUNC6(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_CTOS_KEY_SHARE, SSL_R_BAD_ECPOINT);
            return 0;
        }

        found = 1;
    }
#endif

    return 1;
}