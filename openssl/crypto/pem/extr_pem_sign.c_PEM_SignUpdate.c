
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_DigestUpdate (int *,unsigned char*,unsigned int) ;

int PEM_SignUpdate(EVP_MD_CTX *ctx, unsigned char *data, unsigned int count)
{
    return EVP_DigestUpdate(ctx, data, count);
}
