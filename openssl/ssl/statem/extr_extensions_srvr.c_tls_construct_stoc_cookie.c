
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_14__ {int new_cipher; } ;
struct TYPE_15__ {int flags; int * peer_tmp; TYPE_2__ tmp; int group_id; } ;
struct TYPE_19__ {TYPE_6__* session_ctx; TYPE_4__* ctx; TYPE_3__ s3; TYPE_1__* method; } ;
struct TYPE_17__ {int cookie_hmac_key; } ;
struct TYPE_18__ {TYPE_5__ ext; } ;
struct TYPE_16__ {scalar_t__ (* gen_stateless_cookie_cb ) (TYPE_7__*,unsigned char*,size_t*) ;} ;
struct TYPE_13__ {int (* put_cipher_by_char ) (int ,int *,size_t*) ;} ;
typedef TYPE_7__ SSL ;
typedef int EXT_RETURN ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;


 int COOKIE_STATE_FORMAT_VERSION ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_DigestSign (int *,unsigned char*,size_t*,unsigned char*,size_t) ;
 scalar_t__ EVP_DigestSignInit (int *,int *,int ,int *,int *) ;
 size_t EVP_MAX_MD_SIZE ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_free (int *) ;
 int EVP_PKEY_HMAC ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new_raw_private_key (int ,int *,int ,int) ;
 int EVP_sha256 () ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 size_t MAX_COOKIE_SIZE ;
 size_t SHA256_DIGEST_LENGTH ;
 int SSL_AD_INTERNAL_ERROR ;
 size_t SSL_COOKIE_LENGTH ;
 int SSL_F_TLS_CONSTRUCT_STOC_COOKIE ;
 int SSL_R_COOKIE_GEN_CALLBACK_FAILURE ;
 int SSL_R_NO_COOKIE_CALLBACK_SET ;
 int SSLfatal (TYPE_7__*,int ,int ,int ) ;
 int TLS1_3_VERSION ;
 int TLS1_FLAGS_STATELESS ;
 int TLSEXT_TYPE_cookie ;
 int WPACKET_allocate_bytes (int *,size_t,unsigned char**) ;
 int WPACKET_close (int *) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_put_bytes_u32 (int *,unsigned int) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_reserve_bytes (int *,size_t,unsigned char**) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u8 (int *) ;
 int ossl_assert (int) ;
 int ssl3_digest_cached_records (TYPE_7__*,int ) ;
 int ssl_handshake_hash (TYPE_7__*,unsigned char*,size_t,size_t*) ;
 int stub1 (int ,int *,size_t*) ;
 scalar_t__ stub2 (TYPE_7__*,unsigned char*,size_t*) ;
 scalar_t__ time (int *) ;

EXT_RETURN tls_construct_stoc_cookie(SSL *s, WPACKET *pkt, unsigned int context,
                                     X509 *x, size_t chainidx)
{

    unsigned char *hashval1, *hashval2, *appcookie1, *appcookie2, *cookie;
    unsigned char *hmac, *hmac2;
    size_t startlen, ciphlen, totcookielen, hashlen, hmaclen, appcookielen;
    EVP_MD_CTX *hctx;
    EVP_PKEY *pkey;
    int ret = EXT_RETURN_FAIL;

    if ((s->s3.flags & TLS1_FLAGS_STATELESS) == 0)
        return EXT_RETURN_NOT_SENT;

    if (s->ctx->gen_stateless_cookie_cb == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 SSL_R_NO_COOKIE_CALLBACK_SET);
        return EXT_RETURN_FAIL;
    }

    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_cookie)
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_get_total_written(pkt, &startlen)
            || !WPACKET_reserve_bytes(pkt, MAX_COOKIE_SIZE, &cookie)
            || !WPACKET_put_bytes_u16(pkt, COOKIE_STATE_FORMAT_VERSION)
            || !WPACKET_put_bytes_u16(pkt, TLS1_3_VERSION)
            || !WPACKET_put_bytes_u16(pkt, s->s3.group_id)
            || !s->method->put_cipher_by_char(s->s3.tmp.new_cipher, pkt,
                                              &ciphlen)

            || !WPACKET_put_bytes_u8(pkt, s->s3.peer_tmp == ((void*)0))
            || !WPACKET_put_bytes_u32(pkt, (unsigned int)time(((void*)0)))
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_reserve_bytes(pkt, EVP_MAX_MD_SIZE, &hashval1)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }






    if (!ssl3_digest_cached_records(s, 0)
            || !ssl_handshake_hash(s, hashval1, EVP_MAX_MD_SIZE, &hashlen)) {

        return EXT_RETURN_FAIL;
    }

    if (!WPACKET_allocate_bytes(pkt, hashlen, &hashval2)
            || !ossl_assert(hashval1 == hashval2)
            || !WPACKET_close(pkt)
            || !WPACKET_start_sub_packet_u8(pkt)
            || !WPACKET_reserve_bytes(pkt, SSL_COOKIE_LENGTH, &appcookie1)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }


    if (s->ctx->gen_stateless_cookie_cb(s, appcookie1, &appcookielen) == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 SSL_R_COOKIE_GEN_CALLBACK_FAILURE);
        return EXT_RETURN_FAIL;
    }

    if (!WPACKET_allocate_bytes(pkt, appcookielen, &appcookie2)
            || !ossl_assert(appcookie1 == appcookie2)
            || !WPACKET_close(pkt)
            || !WPACKET_get_total_written(pkt, &totcookielen)
            || !WPACKET_reserve_bytes(pkt, SHA256_DIGEST_LENGTH, &hmac)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }
    hmaclen = SHA256_DIGEST_LENGTH;

    totcookielen -= startlen;
    if (!ossl_assert(totcookielen <= MAX_COOKIE_SIZE - SHA256_DIGEST_LENGTH)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }


    hctx = EVP_MD_CTX_create();
    pkey = EVP_PKEY_new_raw_private_key(EVP_PKEY_HMAC, ((void*)0),
                                        s->session_ctx->ext.cookie_hmac_key,
                                        sizeof(s->session_ctx->ext
                                               .cookie_hmac_key));
    if (hctx == ((void*)0) || pkey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_DigestSignInit(hctx, ((void*)0), EVP_sha256(), ((void*)0), pkey) <= 0
            || EVP_DigestSign(hctx, hmac, &hmaclen, cookie,
                              totcookielen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (!ossl_assert(totcookielen + hmaclen <= MAX_COOKIE_SIZE)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (!WPACKET_allocate_bytes(pkt, hmaclen, &hmac2)
            || !ossl_assert(hmac == hmac2)
            || !ossl_assert(cookie == hmac - totcookielen)
            || !WPACKET_close(pkt)
            || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_COOKIE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = EXT_RETURN_SENT;

 err:
    EVP_MD_CTX_free(hctx);
    EVP_PKEY_free(pkey);
    return ret;



}
