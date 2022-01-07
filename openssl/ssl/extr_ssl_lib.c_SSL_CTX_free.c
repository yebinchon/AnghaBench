
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int secure; TYPE_2__* alpn; TYPE_2__* supportedgroups; TYPE_2__* ecpointformats; } ;
struct TYPE_10__ {int lock; TYPE_1__ ext; int client_cert_engine; int srtp_profiles; int * comp_methods; int extra_certs; int client_ca_names; int ca_names; int cert; int tls13_ciphersuites; int cipher_list_by_id; int cipher_list; int ctlog_store; int cert_store; int * sessions; int ex_data; int dane; int param; int references; } ;
typedef TYPE_2__ SSL_CTX ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_EX_INDEX_SSL_CTX ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_2__*,int *) ;
 int CTLOG_STORE_free (int ) ;
 int ENGINE_finish (int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 int OPENSSL_secure_free (int ) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_2__*) ;
 int SSL_CTX_SRP_CTX_free (TYPE_2__*) ;
 int SSL_CTX_flush_sessions (TYPE_2__*,int ) ;
 int X509_NAME_free ;
 int X509_STORE_free (int ) ;
 int X509_VERIFY_PARAM_free (int ) ;
 int X509_free ;
 int dane_ctx_final (int *) ;
 int lh_SSL_SESSION_free (int *) ;
 int sk_SRTP_PROTECTION_PROFILE_free (int ) ;
 int sk_SSL_CIPHER_free (int ) ;
 int sk_X509_NAME_pop_free (int ,int ) ;
 int sk_X509_pop_free (int ,int ) ;
 int ssl_cert_free (int ) ;

void SSL_CTX_free(SSL_CTX *a)
{
    int i;

    if (a == ((void*)0))
        return;

    CRYPTO_DOWN_REF(&a->references, &i, a->lock);
    REF_PRINT_COUNT("SSL_CTX", a);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);

    X509_VERIFY_PARAM_free(a->param);
    dane_ctx_final(&a->dane);
    if (a->sessions != ((void*)0))
        SSL_CTX_flush_sessions(a, 0);

    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_SSL_CTX, a, &a->ex_data);
    lh_SSL_SESSION_free(a->sessions);
    X509_STORE_free(a->cert_store);

    CTLOG_STORE_free(a->ctlog_store);

    sk_SSL_CIPHER_free(a->cipher_list);
    sk_SSL_CIPHER_free(a->cipher_list_by_id);
    sk_SSL_CIPHER_free(a->tls13_ciphersuites);
    ssl_cert_free(a->cert);
    sk_X509_NAME_pop_free(a->ca_names, X509_NAME_free);
    sk_X509_NAME_pop_free(a->client_ca_names, X509_NAME_free);
    sk_X509_pop_free(a->extra_certs, X509_free);
    a->comp_methods = ((void*)0);

    sk_SRTP_PROTECTION_PROFILE_free(a->srtp_profiles);


    SSL_CTX_SRP_CTX_free(a);


    ENGINE_finish(a->client_cert_engine);



    OPENSSL_free(a->ext.ecpointformats);

    OPENSSL_free(a->ext.supportedgroups);
    OPENSSL_free(a->ext.alpn);
    OPENSSL_secure_free(a->ext.secure);

    CRYPTO_THREAD_lock_free(a->lock);

    OPENSSL_free(a);
}
