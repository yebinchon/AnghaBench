
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int peer_cert_sigalgs; int peer_sigalgs; int pmslen; int pms; int ciphers_raw; int peer_ca_names; int ctype; int * pkey; } ;
struct TYPE_10__ {int alpn_proposed; int alpn_selected; TYPE_1__ tmp; int * peer_tmp; } ;
struct TYPE_9__ {TYPE_6__ s3; } ;
typedef TYPE_2__ SSL ;


 int EVP_PKEY_free (int *) ;
 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (int ) ;
 int SSL_SRP_CTX_free (TYPE_2__*) ;
 int X509_NAME_free ;
 int memset (TYPE_6__*,int ,int) ;
 int sk_X509_NAME_pop_free (int ,int ) ;
 int ssl3_cleanup_key_block (TYPE_2__*) ;
 int ssl3_free_digest_list (TYPE_2__*) ;

void ssl3_free(SSL *s)
{
    if (s == ((void*)0))
        return;

    ssl3_cleanup_key_block(s);


    EVP_PKEY_free(s->s3.peer_tmp);
    s->s3.peer_tmp = ((void*)0);
    EVP_PKEY_free(s->s3.tmp.pkey);
    s->s3.tmp.pkey = ((void*)0);


    OPENSSL_free(s->s3.tmp.ctype);
    sk_X509_NAME_pop_free(s->s3.tmp.peer_ca_names, X509_NAME_free);
    OPENSSL_free(s->s3.tmp.ciphers_raw);
    OPENSSL_clear_free(s->s3.tmp.pms, s->s3.tmp.pmslen);
    OPENSSL_free(s->s3.tmp.peer_sigalgs);
    OPENSSL_free(s->s3.tmp.peer_cert_sigalgs);
    ssl3_free_digest_list(s);
    OPENSSL_free(s->s3.alpn_selected);
    OPENSSL_free(s->s3.alpn_proposed);


    SSL_SRP_CTX_free(s);

    memset(&s->s3, 0, sizeof(s->s3));
}
