
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_MD ;


 int EVP_F_EVP_PKEY_CTX_MD ;
 int EVP_PKEY_CTX_ctrl (int *,int,int,int,int ,void*) ;
 int EVP_R_INVALID_DIGEST ;
 int * EVP_get_digestbyname (char const*) ;
 int EVPerr (int ,int ) ;

int EVP_PKEY_CTX_md(EVP_PKEY_CTX *ctx, int optype, int cmd, const char *md)
{
    const EVP_MD *m;

    if (md == ((void*)0) || (m = EVP_get_digestbyname(md)) == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_MD, EVP_R_INVALID_DIGEST);
        return 0;
    }
    return EVP_PKEY_CTX_ctrl(ctx, -1, optype, cmd, 0, (void *)m);
}
