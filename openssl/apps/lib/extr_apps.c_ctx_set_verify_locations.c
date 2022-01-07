
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_load_verify_dir (int *,char const*) ;
 int SSL_CTX_load_verify_file (int *,char const*) ;
 int SSL_CTX_load_verify_store (int *,char const*) ;
 scalar_t__ SSL_CTX_set_default_verify_dir (int *) ;
 scalar_t__ SSL_CTX_set_default_verify_file (int *) ;
 scalar_t__ SSL_CTX_set_default_verify_store (int *) ;

int ctx_set_verify_locations(SSL_CTX *ctx,
                             const char *CAfile, int noCAfile,
                             const char *CApath, int noCApath,
                             const char *CAstore, int noCAstore)
{
    if (CAfile == ((void*)0) && CApath == ((void*)0) && CAstore == ((void*)0)) {
        if (!noCAfile && SSL_CTX_set_default_verify_file(ctx) <= 0)
            return 0;
        if (!noCApath && SSL_CTX_set_default_verify_dir(ctx) <= 0)
            return 0;
        if (!noCAstore && SSL_CTX_set_default_verify_store(ctx) <= 0)
            return 0;

        return 1;
    }

    if (CAfile != ((void*)0) && !SSL_CTX_load_verify_file(ctx, CAfile))
        return 0;
    if (CApath != ((void*)0) && !SSL_CTX_load_verify_dir(ctx, CApath))
        return 0;
    if (CAstore != ((void*)0) && !SSL_CTX_load_verify_store(ctx, CAstore))
        return 0;
    return 1;
}
