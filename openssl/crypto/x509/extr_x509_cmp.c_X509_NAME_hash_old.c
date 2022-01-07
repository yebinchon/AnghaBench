
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bytes; } ;
typedef TYPE_2__ X509_NAME ;
struct TYPE_5__ {int length; int data; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 scalar_t__ EVP_DigestInit_ex (int *,int *,int *) ;
 scalar_t__ EVP_DigestUpdate (int *,int ,int ) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int * EVP_MD_fetch (int *,int ,char*) ;
 int EVP_MD_free (int *) ;
 int OSSL_DIGEST_NAME_MD5 ;
 int i2d_X509_NAME (TYPE_2__*,int *) ;

unsigned long X509_NAME_hash_old(X509_NAME *x)
{
    EVP_MD *md5 = EVP_MD_fetch(((void*)0), OSSL_DIGEST_NAME_MD5, "-fips");
    EVP_MD_CTX *md_ctx = EVP_MD_CTX_new();
    unsigned long ret = 0;
    unsigned char md[16];

    if (md5 == ((void*)0) || md_ctx == ((void*)0))
        goto end;


    i2d_X509_NAME(x, ((void*)0));
    if (EVP_DigestInit_ex(md_ctx, md5, ((void*)0))
        && EVP_DigestUpdate(md_ctx, x->bytes->data, x->bytes->length)
        && EVP_DigestFinal_ex(md_ctx, md, ((void*)0)))
        ret = (((unsigned long)md[0]) | ((unsigned long)md[1] << 8L) |
               ((unsigned long)md[2] << 16L) | ((unsigned long)md[3] << 24L)
            ) & 0xffffffffL;

 end:
    EVP_MD_CTX_free(md_ctx);
    EVP_MD_free(md5);

    return ret;
}
