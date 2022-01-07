
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 int X509_FILETYPE_PEM ;
 int X509_LOOKUP_file () ;
 scalar_t__ X509_LOOKUP_load_file (int *,char const*,int ) ;
 int * X509_STORE_add_lookup (int *,int ) ;

int X509_STORE_load_file(X509_STORE *ctx, const char *file)
{
    X509_LOOKUP *lookup;

    if (file == ((void*)0)
        || (lookup = X509_STORE_add_lookup(ctx, X509_LOOKUP_file())) == ((void*)0)
        || X509_LOOKUP_load_file(lookup, file, X509_FILETYPE_PEM) == 0)
        return 0;

    return 1;
}
