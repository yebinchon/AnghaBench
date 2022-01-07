
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
 int X509_FILETYPE_DEFAULT ;
 int X509_LOOKUP_file () ;
 int X509_LOOKUP_load_file (int *,int *,int ) ;
 int * X509_STORE_add_lookup (int ,int ) ;

int SSL_CTX_set_default_verify_file(SSL_CTX *ctx)
{
    X509_LOOKUP *lookup;

    lookup = X509_STORE_add_lookup(ctx->cert_store, X509_LOOKUP_file());
    if (lookup == ((void*)0))
        return 0;


    ERR_set_mark();

    X509_LOOKUP_load_file(lookup, ((void*)0), X509_FILETYPE_DEFAULT);

    ERR_pop_to_mark();

    return 1;
}
