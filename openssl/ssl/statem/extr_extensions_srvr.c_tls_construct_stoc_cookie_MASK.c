#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_14__ {int /*<<< orphan*/  new_cipher; } ;
struct TYPE_15__ {int flags; int /*<<< orphan*/ * peer_tmp; TYPE_2__ tmp; int /*<<< orphan*/  group_id; } ;
struct TYPE_19__ {TYPE_6__* session_ctx; TYPE_4__* ctx; TYPE_3__ s3; TYPE_1__* method; } ;
struct TYPE_17__ {int /*<<< orphan*/  cookie_hmac_key; } ;
struct TYPE_18__ {TYPE_5__ ext; } ;
struct TYPE_16__ {scalar_t__ (* gen_stateless_cookie_cb ) (TYPE_7__*,unsigned char*,size_t*) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  (* put_cipher_by_char ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ;} ;
typedef  TYPE_7__ SSL ;
typedef  int EXT_RETURN ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  COOKIE_STATE_FORMAT_VERSION ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_HMAC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int EXT_RETURN_FAIL ; 
 int EXT_RETURN_NOT_SENT ; 
 int EXT_RETURN_SENT ; 
 size_t MAX_COOKIE_SIZE ; 
 size_t SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 size_t SSL_COOKIE_LENGTH ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_STOC_COOKIE ; 
 int /*<<< orphan*/  SSL_R_COOKIE_GEN_CALLBACK_FAILURE ; 
 int /*<<< orphan*/  SSL_R_NO_COOKIE_CALLBACK_SET ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int TLS1_FLAGS_STATELESS ; 
 int /*<<< orphan*/  TLSEXT_TYPE_cookie ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t,unsigned char**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*,unsigned char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC21 (TYPE_7__*,unsigned char*,size_t*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 

EXT_RETURN FUNC23(SSL *s, WPACKET *pkt, unsigned int context,
                                     X509 *x, size_t chainidx)
{
#ifndef OPENSSL_NO_TLS1_3
    unsigned char *hashval1, *hashval2, *appcookie1, *appcookie2, *cookie;
    unsigned char *hmac, *hmac2;
    size_t startlen, ciphlen, totcookielen, hashlen, hmaclen, appcookielen;
    EVP_MD_CTX *hctx;
    EVP_PKEY *pkey;
    int ret = EXT_RETURN_FAIL;

    if ((s->s3.flags & TLS1_FLAGS_STATELESS) == 0)
        return EXT_RETURN_NOT_SENT;

    if (s->ctx->gen_stateless_cookie_cb == NULL) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 SSL_R_NO_COOKIE_CALLBACK_SET);
        return EXT_RETURN_FAIL;
    }

    if (!FUNC11(pkt, TLSEXT_TYPE_cookie)
            || !FUNC15(pkt)
            || !FUNC15(pkt)
            || !FUNC10(pkt, &startlen)
            || !FUNC14(pkt, MAX_COOKIE_SIZE, &cookie)
            || !FUNC11(pkt, COOKIE_STATE_FORMAT_VERSION)
            || !FUNC11(pkt, TLS1_3_VERSION)
            || !FUNC11(pkt, s->s3.group_id)
            || !s->method->put_cipher_by_char(s->s3.tmp.new_cipher, pkt,
                                              &ciphlen)
               /* Is there a key_share extension present in this HRR? */
            || !FUNC13(pkt, s->s3.peer_tmp == NULL)
            || !FUNC12(pkt, (unsigned int)FUNC22(NULL))
            || !FUNC15(pkt)
            || !FUNC14(pkt, EVP_MAX_MD_SIZE, &hashval1)) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    /*
     * Get the hash of the initial ClientHello. ssl_handshake_hash() operates
     * on raw buffers, so we first reserve sufficient bytes (above) and then
     * subsequently allocate them (below)
     */
    if (!FUNC18(s, 0)
            || !FUNC19(s, hashval1, EVP_MAX_MD_SIZE, &hashlen)) {
        /* SSLfatal() already called */
        return EXT_RETURN_FAIL;
    }

    if (!FUNC8(pkt, hashlen, &hashval2)
            || !FUNC17(hashval1 == hashval2)
            || !FUNC9(pkt)
            || !FUNC16(pkt)
            || !FUNC14(pkt, SSL_COOKIE_LENGTH, &appcookie1)) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    /* Generate the application cookie */
    if (s->ctx->gen_stateless_cookie_cb(s, appcookie1, &appcookielen) == 0) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 SSL_R_COOKIE_GEN_CALLBACK_FAILURE);
        return EXT_RETURN_FAIL;
    }

    if (!FUNC8(pkt, appcookielen, &appcookie2)
            || !FUNC17(appcookie1 == appcookie2)
            || !FUNC9(pkt)
            || !FUNC10(pkt, &totcookielen)
            || !FUNC14(pkt, SHA256_DIGEST_LENGTH, &hmac)) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }
    hmaclen = SHA256_DIGEST_LENGTH;

    totcookielen -= startlen;
    if (!FUNC17(totcookielen <= MAX_COOKIE_SIZE - SHA256_DIGEST_LENGTH)) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    /* HMAC the cookie */
    hctx = FUNC2();
    pkey = FUNC5(EVP_PKEY_HMAC, NULL,
                                        s->session_ctx->ext.cookie_hmac_key,
                                        sizeof(s->session_ctx->ext
                                               .cookie_hmac_key));
    if (hctx == NULL || pkey == NULL) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC1(hctx, NULL, FUNC6(), NULL, pkey) <= 0
            || FUNC0(hctx, hmac, &hmaclen, cookie,
                              totcookielen) <= 0) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (!FUNC17(totcookielen + hmaclen <= MAX_COOKIE_SIZE)) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (!FUNC8(pkt, hmaclen, &hmac2)
            || !FUNC17(hmac == hmac2)
            || !FUNC17(cookie == hmac - totcookielen)
            || !FUNC9(pkt)
            || !FUNC9(pkt)) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = EXT_RETURN_SENT;

 err:
    FUNC3(hctx);
    FUNC4(pkey);
    return ret;
#else
    return EXT_RETURN_FAIL;
#endif
}