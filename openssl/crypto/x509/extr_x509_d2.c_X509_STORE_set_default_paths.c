
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 int ERR_clear_error () ;
 int X509_FILETYPE_DEFAULT ;
 int X509_LOOKUP_add_dir (int *,int *,int ) ;
 int X509_LOOKUP_add_store (int *,int *) ;
 int X509_LOOKUP_file () ;
 int X509_LOOKUP_hash_dir () ;
 int X509_LOOKUP_load_file (int *,int *,int ) ;
 int X509_LOOKUP_store () ;
 int * X509_STORE_add_lookup (int *,int ) ;

int X509_STORE_set_default_paths(X509_STORE *ctx)
{
    X509_LOOKUP *lookup;

    lookup = X509_STORE_add_lookup(ctx, X509_LOOKUP_file());
    if (lookup == ((void*)0))
        return 0;
    X509_LOOKUP_load_file(lookup, ((void*)0), X509_FILETYPE_DEFAULT);

    lookup = X509_STORE_add_lookup(ctx, X509_LOOKUP_hash_dir());
    if (lookup == ((void*)0))
        return 0;
    X509_LOOKUP_add_dir(lookup, ((void*)0), X509_FILETYPE_DEFAULT);

    lookup = X509_STORE_add_lookup(ctx, X509_LOOKUP_store());
    if (lookup == ((void*)0))
        return 0;
    X509_LOOKUP_add_store(lookup, ((void*)0));


    ERR_clear_error();

    return 1;
}
