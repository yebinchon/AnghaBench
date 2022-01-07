
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_schedule {int tls_crypt_v2_server_key; int ssl_ctx; int static_key; } ;


 int CLEAR (struct key_schedule) ;
 int free_key_ctx (int *) ;
 int free_key_ctx_bi (int *) ;
 int tls_ctx_free (int *) ;
 scalar_t__ tls_ctx_initialised (int *) ;

__attribute__((used)) static void
key_schedule_free(struct key_schedule *ks, bool free_ssl_ctx)
{
    free_key_ctx_bi(&ks->static_key);
    if (tls_ctx_initialised(&ks->ssl_ctx) && free_ssl_ctx)
    {
        tls_ctx_free(&ks->ssl_ctx);
        free_key_ctx(&ks->tls_crypt_v2_server_key);
    }
    CLEAR(*ks);
}
