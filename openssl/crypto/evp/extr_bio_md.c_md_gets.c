
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int BIO ;


 int * BIO_get_data (int *) ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 int EVP_MD_CTX_size (int *) ;

__attribute__((used)) static int md_gets(BIO *bp, char *buf, int size)
{
    EVP_MD_CTX *ctx;
    unsigned int ret;

    ctx = BIO_get_data(bp);

    if (size < EVP_MD_CTX_size(ctx))
        return 0;

    if (EVP_DigestFinal_ex(ctx, (unsigned char *)buf, &ret) <= 0)
        return -1;

    return (int)ret;
}
