
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tls13_ciphersuites; int cipher_list_by_id; int * cipher_list; } ;
typedef TYPE_1__ SSL_CTX ;


 int set_ciphersuites (int *,char const*) ;
 int update_cipher_list (int **,int *,int ) ;

int SSL_CTX_set_ciphersuites(SSL_CTX *ctx, const char *str)
{
    int ret = set_ciphersuites(&(ctx->tls13_ciphersuites), str);

    if (ret && ctx->cipher_list != ((void*)0))
        return update_cipher_list(&ctx->cipher_list, &ctx->cipher_list_by_id,
                                  ctx->tls13_ciphersuites);

    return ret;
}
