
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;


 int X509_STORE_load_file (int *,char const*) ;
 int X509_STORE_load_path (int *,char const*) ;

int X509_STORE_load_locations(X509_STORE *ctx, const char *file,
                              const char *path)
{
    if (file == ((void*)0) && path == ((void*)0))
        return 0;
    if (file != ((void*)0) && !X509_STORE_load_file(ctx, file))
        return 0;
    if (path != ((void*)0) && !X509_STORE_load_path(ctx, path))
        return 0;
    return 1;
}
