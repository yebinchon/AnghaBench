
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_session {int cert_hash_set; scalar_t__ common_name; int * key; int tls_wrap; } ;


 size_t KS_SIZE ;
 int cert_hash_free (int ) ;
 int free (scalar_t__) ;
 int key_state_free (int *,int) ;
 int secure_memzero (struct tls_session*,int) ;
 int tls_wrap_free (int *) ;

__attribute__((used)) static void
tls_session_free(struct tls_session *session, bool clear)
{
    tls_wrap_free(&session->tls_wrap);

    for (size_t i = 0; i < KS_SIZE; ++i)
    {
        key_state_free(&session->key[i], 0);
    }

    if (session->common_name)
    {
        free(session->common_name);
    }

    cert_hash_free(session->cert_hash_set);

    if (clear)
    {
        secure_memzero(session, sizeof(*session));
    }
}
