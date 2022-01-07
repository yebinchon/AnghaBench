
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;


 int * do_b2i_bio (int *,int) ;

EVP_PKEY *b2i_PublicKey_bio(BIO *in)
{
    return do_b2i_bio(in, 1);
}
