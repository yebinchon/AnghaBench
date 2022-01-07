
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int verbose; int old_cb; int out; } ;
typedef TYPE_1__ security_debug_ex ;
typedef int SSL_CTX ;


 int SSL_CTX_get_security_callback (int *) ;
 int SSL_CTX_set0_security_ex_data (int *,TYPE_1__*) ;
 int SSL_CTX_set_security_callback (int *,int ) ;
 int bio_err ;
 int security_callback_debug ;

void ssl_ctx_security_debug(SSL_CTX *ctx, int verbose)
{
    static security_debug_ex sdb;

    sdb.out = bio_err;
    sdb.verbose = verbose;
    sdb.old_cb = SSL_CTX_get_security_callback(ctx);
    SSL_CTX_set_security_callback(ctx, security_callback_debug);
    SSL_CTX_set0_security_ex_data(ctx, &sdb);
}
