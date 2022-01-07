
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pkey; int * peer_cert_sigalgs; int * peer_sigalgs; int pmslen; int pms; int * ciphers_raw; int peer_ca_names; int * ctype; } ;
struct TYPE_12__ {int * alpn_proposed; int * alpn_selected; int peer_tmp; TYPE_1__ tmp; } ;
struct TYPE_10__ {scalar_t__ npn_len; int * npn; } ;
struct TYPE_11__ {TYPE_2__ ext; int version; TYPE_8__ s3; } ;
typedef TYPE_3__ SSL ;


 int EVP_PKEY_free (int ) ;
 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (int *) ;
 int SSL3_VERSION ;
 int X509_NAME_free ;
 int memset (TYPE_8__*,int ,int) ;
 int sk_X509_NAME_pop_free (int ,int ) ;
 int ssl3_cleanup_key_block (TYPE_3__*) ;
 int ssl3_free_digest_list (TYPE_3__*) ;
 int ssl_free_wbio_buffer (TYPE_3__*) ;

int ssl3_clear(SSL *s)
{
    ssl3_cleanup_key_block(s);
    OPENSSL_free(s->s3.tmp.ctype);
    sk_X509_NAME_pop_free(s->s3.tmp.peer_ca_names, X509_NAME_free);
    OPENSSL_free(s->s3.tmp.ciphers_raw);
    OPENSSL_clear_free(s->s3.tmp.pms, s->s3.tmp.pmslen);
    OPENSSL_free(s->s3.tmp.peer_sigalgs);
    OPENSSL_free(s->s3.tmp.peer_cert_sigalgs);


    EVP_PKEY_free(s->s3.tmp.pkey);
    EVP_PKEY_free(s->s3.peer_tmp);


    ssl3_free_digest_list(s);

    OPENSSL_free(s->s3.alpn_selected);
    OPENSSL_free(s->s3.alpn_proposed);


    memset(&s->s3, 0, sizeof(s->s3));

    if (!ssl_free_wbio_buffer(s))
        return 0;

    s->version = SSL3_VERSION;


    OPENSSL_free(s->ext.npn);
    s->ext.npn = ((void*)0);
    s->ext.npn_len = 0;


    return 1;
}
