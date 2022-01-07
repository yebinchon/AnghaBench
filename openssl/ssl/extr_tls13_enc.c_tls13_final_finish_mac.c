
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int hash ;
typedef int finsecret ;
struct TYPE_12__ {unsigned char* server_finished_secret; unsigned char* client_finished_secret; int client_app_traffic_secret; TYPE_2__* method; } ;
struct TYPE_11__ {TYPE_1__* ssl3_enc; } ;
struct TYPE_10__ {char const* server_finished_label; } ;
typedef TYPE_3__ SSL ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_DigestSignInit (int *,int *,int const*,int *,int *) ;
 scalar_t__ EVP_DigestSignUpdate (int *,unsigned char*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_PKEY_HMAC ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new_raw_private_key (int ,int *,unsigned char*,size_t) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS13_FINAL_FINISH_MAC ;
 scalar_t__ SSL_IS_FIRST_HANDSHAKE (TYPE_3__*) ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int ssl_handshake_hash (TYPE_3__*,unsigned char*,int,size_t*) ;
 int * ssl_handshake_md (TYPE_3__*) ;
 int tls13_derive_finishedkey (TYPE_3__*,int *,int ,unsigned char*,size_t) ;

size_t tls13_final_finish_mac(SSL *s, const char *str, size_t slen,
                             unsigned char *out)
{
    const EVP_MD *md = ssl_handshake_md(s);
    unsigned char hash[EVP_MAX_MD_SIZE];
    size_t hashlen, ret = 0;
    EVP_PKEY *key = ((void*)0);
    EVP_MD_CTX *ctx = EVP_MD_CTX_new();

    if (!ssl_handshake_hash(s, hash, sizeof(hash), &hashlen)) {

        goto err;
    }

    if (str == s->method->ssl3_enc->server_finished_label) {
        key = EVP_PKEY_new_raw_private_key(EVP_PKEY_HMAC, ((void*)0),
                                           s->server_finished_secret, hashlen);
    } else if (SSL_IS_FIRST_HANDSHAKE(s)) {
        key = EVP_PKEY_new_raw_private_key(EVP_PKEY_HMAC, ((void*)0),
                                           s->client_finished_secret, hashlen);
    } else {
        unsigned char finsecret[EVP_MAX_MD_SIZE];

        if (!tls13_derive_finishedkey(s, ssl_handshake_md(s),
                                      s->client_app_traffic_secret,
                                      finsecret, hashlen))
            goto err;

        key = EVP_PKEY_new_raw_private_key(EVP_PKEY_HMAC, ((void*)0), finsecret,
                                           hashlen);
        OPENSSL_cleanse(finsecret, sizeof(finsecret));
    }

    if (key == ((void*)0)
            || ctx == ((void*)0)
            || EVP_DigestSignInit(ctx, ((void*)0), md, ((void*)0), key) <= 0
            || EVP_DigestSignUpdate(ctx, hash, hashlen) <= 0
            || EVP_DigestSignFinal(ctx, out, &hashlen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = hashlen;
 err:
    EVP_PKEY_free(key);
    EVP_MD_CTX_free(ctx);
    return ret;
}
