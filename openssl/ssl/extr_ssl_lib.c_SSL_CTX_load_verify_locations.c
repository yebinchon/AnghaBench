
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_load_verify_dir (int *,char const*) ;
 int SSL_CTX_load_verify_file (int *,char const*) ;

int SSL_CTX_load_verify_locations(SSL_CTX *ctx, const char *CAfile,
                                  const char *CApath)
{
    if (CAfile == ((void*)0) && CApath == ((void*)0))
        return 0;
    if (CAfile != ((void*)0) && !SSL_CTX_load_verify_file(ctx, CAfile))
        return 0;
    if (CApath != ((void*)0) && !SSL_CTX_load_verify_dir(ctx, CApath))
        return 0;
    return 1;
}
