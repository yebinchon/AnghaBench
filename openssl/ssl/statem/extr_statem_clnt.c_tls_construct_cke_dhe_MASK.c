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
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_6__ {int /*<<< orphan*/ * peer_tmp; } ;
struct TYPE_7__ {TYPE_1__ s3; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CKE_DHE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char**) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(SSL *s, WPACKET *pkt)
{
#ifndef OPENSSL_NO_DH
    DH *dh_clnt = NULL;
    const BIGNUM *pub_key;
    EVP_PKEY *ckey = NULL, *skey = NULL;
    unsigned char *keybytes = NULL;

    skey = s->s3.peer_tmp;
    if (skey == NULL) {
        FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ckey = FUNC8(skey);
    if (ckey == NULL) {
        FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    dh_clnt = FUNC4(ckey);

    if (dh_clnt == NULL) {
        FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (FUNC7(s, ckey, skey, 0) == 0) {
        /* SSLfatal() already called */
        goto err;
    }

    /* send off the data */
    FUNC2(dh_clnt, &pub_key, NULL);
    if (!FUNC6(pkt, FUNC1(pub_key),
                                        &keybytes)) {
        FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    FUNC0(pub_key, keybytes);
    FUNC3(ckey);

    return 1;
 err:
    FUNC3(ckey);
    return 0;
#else
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_DHE,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}