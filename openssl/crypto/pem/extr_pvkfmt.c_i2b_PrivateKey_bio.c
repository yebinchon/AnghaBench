
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;


 int do_i2b_bio (int *,int *,int ) ;

int i2b_PrivateKey_bio(BIO *out, EVP_PKEY *pk)
{
    return do_i2b_bio(out, pk, 0);
}
