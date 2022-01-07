
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BIO ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_i2d_bio (int ,int *,int const*) ;
 int RSAPublicKey ;

int i2d_RSAPublicKey_bio(BIO *bp, const RSA *rsa)
{
    return ASN1_item_i2d_bio(ASN1_ITEM_rptr(RSAPublicKey), bp, rsa);
}
