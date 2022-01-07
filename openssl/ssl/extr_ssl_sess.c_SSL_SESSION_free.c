
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int alpn_selected; int tick; int hostname; } ;
struct TYPE_8__ {int lock; int ticket_appdata; TYPE_1__ ext; int srp_username; int psk_identity; int psk_identity_hint; int peer_chain; int peer; int session_id; int master_key; int ex_data; int references; } ;
typedef TYPE_2__ SSL_SESSION ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_EX_INDEX_SSL_SESSION ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_2__*,int *) ;
 int OPENSSL_cleanse (int ,int) ;
 int OPENSSL_clear_free (TYPE_2__*,int) ;
 int OPENSSL_free (int ) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_2__*) ;
 int X509_free (int ) ;
 int sk_X509_pop_free (int ,int (*) (int )) ;

void SSL_SESSION_free(SSL_SESSION *ss)
{
    int i;

    if (ss == ((void*)0))
        return;
    CRYPTO_DOWN_REF(&ss->references, &i, ss->lock);
    REF_PRINT_COUNT("SSL_SESSION", ss);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);

    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_SSL_SESSION, ss, &ss->ex_data);

    OPENSSL_cleanse(ss->master_key, sizeof(ss->master_key));
    OPENSSL_cleanse(ss->session_id, sizeof(ss->session_id));
    X509_free(ss->peer);
    sk_X509_pop_free(ss->peer_chain, X509_free);
    OPENSSL_free(ss->ext.hostname);
    OPENSSL_free(ss->ext.tick);

    OPENSSL_free(ss->psk_identity_hint);
    OPENSSL_free(ss->psk_identity);


    OPENSSL_free(ss->srp_username);

    OPENSSL_free(ss->ext.alpn_selected);
    OPENSSL_free(ss->ticket_appdata);
    CRYPTO_THREAD_lock_free(ss->lock);
    OPENSSL_clear_free(ss, sizeof(*ss));
}
