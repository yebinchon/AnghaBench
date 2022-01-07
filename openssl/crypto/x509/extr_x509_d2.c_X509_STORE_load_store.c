
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 scalar_t__ X509_LOOKUP_add_store (int *,char const*) ;
 int X509_LOOKUP_store () ;
 int * X509_STORE_add_lookup (int *,int ) ;

int X509_STORE_load_store(X509_STORE *ctx, const char *uri)
{
    X509_LOOKUP *lookup;

    if (uri == ((void*)0)
        || (lookup = X509_STORE_add_lookup(ctx, X509_LOOKUP_store())) == ((void*)0)
        || X509_LOOKUP_add_store(lookup, uri) == 0)
        return 0;

    return 1;
}
