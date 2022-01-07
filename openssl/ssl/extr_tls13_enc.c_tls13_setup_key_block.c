
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int cipher; } ;
struct TYPE_7__ {int const* new_hash; int const* new_sym_enc; int new_cipher; } ;
struct TYPE_8__ {TYPE_1__ tmp; } ;
struct TYPE_9__ {TYPE_2__ s3; TYPE_5__* session; } ;
typedef TYPE_3__ SSL ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS13_SETUP_KEY_BLOCK ;
 int SSL_R_CIPHER_OR_HASH_UNAVAILABLE ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int ssl_cipher_get_evp (TYPE_5__*,int const**,int const**,int *,int *,int *,int ) ;

int tls13_setup_key_block(SSL *s)
{
    const EVP_CIPHER *c;
    const EVP_MD *hash;

    s->session->cipher = s->s3.tmp.new_cipher;
    if (!ssl_cipher_get_evp(s->session, &c, &hash, ((void*)0), ((void*)0), ((void*)0), 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_SETUP_KEY_BLOCK,
                 SSL_R_CIPHER_OR_HASH_UNAVAILABLE);
        return 0;
    }

    s->s3.tmp.new_sym_enc = c;
    s->s3.tmp.new_hash = hash;

    return 1;
}
