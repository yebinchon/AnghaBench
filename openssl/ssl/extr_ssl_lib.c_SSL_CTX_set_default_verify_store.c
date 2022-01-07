
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_LOOKUP ;
struct TYPE_3__ {int cert_store; } ;
typedef TYPE_1__ SSL_CTX ;


 int ERR_pop_to_mark () ;
 int ERR_set_mark () ;
 int X509_LOOKUP_add_store (int *,int *) ;
 int X509_LOOKUP_store () ;
 int * X509_STORE_add_lookup (int ,int ) ;

int SSL_CTX_set_default_verify_store(SSL_CTX *ctx)
{
    X509_LOOKUP *lookup;

    lookup = X509_STORE_add_lookup(ctx->cert_store, X509_LOOKUP_store());
    if (lookup == ((void*)0))
        return 0;


    ERR_set_mark();

    X509_LOOKUP_add_store(lookup, ((void*)0));

    ERR_pop_to_mark();

    return 1;
}
