
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;


 int do_sigver_init (int *,int **,int *,char const*,char const*,int *,int *,int ) ;

int EVP_DigestSignInit_ex(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
                          const char *mdname, const char *props, EVP_PKEY *pkey)
{
    return do_sigver_init(ctx, pctx, ((void*)0), mdname, props, ((void*)0), pkey, 0);
}
