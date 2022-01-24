#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_8__ {int /*<<< orphan*/ * pkey; } ;
struct TYPE_9__ {TYPE_1__ tmp; int /*<<< orphan*/  group_id; int /*<<< orphan*/ * peer_tmp; } ;
struct TYPE_10__ {scalar_t__ hello_retry_request; TYPE_2__ s3; int /*<<< orphan*/  hit; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE ; 
 scalar_t__ SSL_HRR_PENDING ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_key_share ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

EXT_RETURN FUNC11(SSL *s, WPACKET *pkt,
                                        unsigned int context, X509 *x,
                                        size_t chainidx)
{
#ifndef OPENSSL_NO_TLS1_3
    unsigned char *encodedPoint;
    size_t encoded_pt_len = 0;
    EVP_PKEY *ckey = s->s3.peer_tmp, *skey = NULL;

    if (s->hello_retry_request == SSL_HRR_PENDING) {
        if (ckey != NULL) {
            /* Original key_share was acceptable so don't ask for another one */
            return EXT_RETURN_NOT_SENT;
        }
        if (!FUNC5(pkt, TLSEXT_TYPE_key_share)
                || !FUNC6(pkt)
                || !FUNC5(pkt, s->s3.group_id)
                || !FUNC4(pkt)) {
            FUNC3(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }

        return EXT_RETURN_SENT;
    }

    if (ckey == NULL) {
        /* No key_share received from client - must be resuming */
        if (!s->hit || !FUNC10(s, NULL, 0)) {
            FUNC3(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        return EXT_RETURN_NOT_SENT;
    }

    if (!FUNC5(pkt, TLSEXT_TYPE_key_share)
            || !FUNC6(pkt)
            || !FUNC5(pkt, s->s3.group_id)) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    skey = FUNC9(ckey);
    if (skey == NULL) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE,
                 ERR_R_MALLOC_FAILURE);
        return EXT_RETURN_FAIL;
    }

    /* Generate encoding of server key */
    encoded_pt_len = FUNC1(skey, &encodedPoint);
    if (encoded_pt_len == 0) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE,
                 ERR_R_EC_LIB);
        FUNC0(skey);
        return EXT_RETURN_FAIL;
    }

    if (!FUNC7(pkt, encodedPoint, encoded_pt_len)
            || !FUNC4(pkt)) {
        FUNC3(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        FUNC0(skey);
        FUNC2(encodedPoint);
        return EXT_RETURN_FAIL;
    }
    FUNC2(encodedPoint);

    /* This causes the crypto state to be updated based on the derived keys */
    s->s3.tmp.pkey = skey;
    if (FUNC8(s, skey, ckey, 1) == 0) {
        /* SSLfatal() already called */
        return EXT_RETURN_FAIL;
    }
    return EXT_RETURN_SENT;
#else
    return EXT_RETURN_FAIL;
#endif
}