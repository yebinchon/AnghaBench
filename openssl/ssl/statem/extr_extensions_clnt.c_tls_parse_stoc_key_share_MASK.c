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
typedef  unsigned int uint16_t ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_9__ {int /*<<< orphan*/ * pkey; } ;
struct TYPE_10__ {unsigned int group_id; int /*<<< orphan*/ * peer_tmp; TYPE_1__ tmp; } ;
struct TYPE_11__ {TYPE_2__ s3; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 unsigned int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_STOC_KEY_SHARE ; 
 int /*<<< orphan*/  SSL_R_BAD_ECPOINT ; 
 int /*<<< orphan*/  SSL_R_BAD_KEY_SHARE ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_SECOP_CURVE_SUPPORTED ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,unsigned int const**,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC12(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                             size_t chainidx)
{
#ifndef OPENSSL_NO_TLS1_3
    unsigned int group_id;
    PACKET encoded_pt;
    EVP_PKEY *ckey = s->s3.tmp.pkey, *skey = NULL;

    /* Sanity check */
    if (ckey == NULL || s->s3.peer_tmp != NULL) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!FUNC6(pkt, &group_id)) {
        FUNC8(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    if ((context & SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST) != 0) {
        const uint16_t *pgroups = NULL;
        size_t i, num_groups;

        if (FUNC7(pkt) != 0) {
            FUNC8(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                     SSL_R_LENGTH_MISMATCH);
            return 0;
        }

        /*
         * It is an error if the HelloRetryRequest wants a key_share that we
         * already sent in the first ClientHello
         */
        if (group_id == s->s3.group_id) {
            FUNC8(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_STOC_KEY_SHARE, SSL_R_BAD_KEY_SHARE);
            return 0;
        }

        /* Validate the selected group is one we support */
        FUNC10(s, &pgroups, &num_groups);
        for (i = 0; i < num_groups; i++) {
            if (group_id == pgroups[i])
                break;
        }
        if (i >= num_groups
                || !FUNC11(s, group_id, SSL_SECOP_CURVE_SUPPORTED)) {
            FUNC8(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_STOC_KEY_SHARE, SSL_R_BAD_KEY_SHARE);
            return 0;
        }

        s->s3.group_id = group_id;
        FUNC1(s->s3.tmp.pkey);
        s->s3.tmp.pkey = NULL;
        return 1;
    }

    if (group_id != s->s3.group_id) {
        /*
         * This isn't for the group that we sent in the original
         * key_share!
         */
        FUNC8(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 SSL_R_BAD_KEY_SHARE);
        return 0;
    }

    if (!FUNC4(pkt, &encoded_pt)
            || FUNC7(&encoded_pt) == 0) {
        FUNC8(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    skey = FUNC2();
    if (skey == NULL || FUNC0(skey, ckey) <= 0) {
        FUNC8(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!FUNC3(skey, FUNC5(&encoded_pt),
                                        FUNC7(&encoded_pt))) {
        FUNC8(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 SSL_R_BAD_ECPOINT);
        FUNC1(skey);
        return 0;
    }

    if (FUNC9(s, ckey, skey, 1) == 0) {
        /* SSLfatal() already called */
        FUNC1(skey);
        return 0;
    }
    s->s3.peer_tmp = skey;
#endif

    return 1;
}