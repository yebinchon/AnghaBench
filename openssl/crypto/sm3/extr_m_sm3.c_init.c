
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_md_data (int *) ;
 int sm3_init (int ) ;

__attribute__((used)) static int init(EVP_MD_CTX *ctx)
{
    return sm3_init(EVP_MD_CTX_md_data(ctx));
}
