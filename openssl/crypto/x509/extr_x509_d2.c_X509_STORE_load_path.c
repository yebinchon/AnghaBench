
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 int X509_FILETYPE_PEM ;
 scalar_t__ X509_LOOKUP_add_dir (int *,char const*,int ) ;
 int X509_LOOKUP_hash_dir () ;
 int * X509_STORE_add_lookup (int *,int ) ;

int X509_STORE_load_path(X509_STORE *ctx, const char *path)
{
    X509_LOOKUP *lookup;

    if (path == ((void*)0)
        || (lookup = X509_STORE_add_lookup(ctx, X509_LOOKUP_hash_dir())) == ((void*)0)
        || X509_LOOKUP_add_dir(lookup, path, X509_FILETYPE_PEM) == 0)
        return 0;

    return 1;
}
