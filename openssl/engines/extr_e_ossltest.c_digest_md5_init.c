
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int MD5_Init (int ) ;
 int data (int *) ;

__attribute__((used)) static int digest_md5_init(EVP_MD_CTX *ctx)
{
    return MD5_Init(data(ctx));
}
