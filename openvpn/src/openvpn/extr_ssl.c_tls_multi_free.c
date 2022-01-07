
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {int * session; struct tls_multi* remote_ciphername; int locked_cert_hash_set; struct tls_multi* locked_username; struct tls_multi* locked_cn; struct tls_multi* peer_info; } ;


 int ASSERT (struct tls_multi*) ;
 int TM_SIZE ;
 int auth_set_client_reason (struct tls_multi*,int *) ;
 int cert_hash_free (int ) ;
 int free (struct tls_multi*) ;
 int secure_memzero (struct tls_multi*,int) ;
 int tls_session_free (int *,int) ;
 int wipe_auth_token (struct tls_multi*) ;

void
tls_multi_free(struct tls_multi *multi, bool clear)
{
    int i;

    ASSERT(multi);







    if (multi->locked_cn)
    {
        free(multi->locked_cn);
    }

    if (multi->locked_username)
    {
        free(multi->locked_username);
    }

    cert_hash_free(multi->locked_cert_hash_set);

    wipe_auth_token(multi);

    free(multi->remote_ciphername);

    for (i = 0; i < TM_SIZE; ++i)
    {
        tls_session_free(&multi->session[i], 0);
    }

    if (clear)
    {
        secure_memzero(multi, sizeof(*multi));
    }

    free(multi);
}
