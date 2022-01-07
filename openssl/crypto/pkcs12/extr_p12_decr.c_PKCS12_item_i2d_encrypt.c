
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_1__ ASN1_OCTET_STRING ;
typedef int ASN1_ITEM ;


 int ASN1_OCTET_STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_OCTET_STRING_new () ;
 int ASN1_item_i2d (void*,unsigned char**,int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int OPENSSL_free (unsigned char*) ;
 int PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT ;
 int PKCS12_R_ENCODE_ERROR ;
 int PKCS12_R_ENCRYPT_ERROR ;
 int PKCS12_pbe_crypt (int *,char const*,int,unsigned char*,int,int *,int *,int) ;
 int PKCS12err (int ,int ) ;

ASN1_OCTET_STRING *PKCS12_item_i2d_encrypt(X509_ALGOR *algor,
                                           const ASN1_ITEM *it,
                                           const char *pass, int passlen,
                                           void *obj, int zbuf)
{
    ASN1_OCTET_STRING *oct = ((void*)0);
    unsigned char *in = ((void*)0);
    int inlen;

    if ((oct = ASN1_OCTET_STRING_new()) == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    inlen = ASN1_item_i2d(obj, &in, it);
    if (!in) {
        PKCS12err(PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, PKCS12_R_ENCODE_ERROR);
        goto err;
    }
    if (!PKCS12_pbe_crypt(algor, pass, passlen, in, inlen, &oct->data,
                          &oct->length, 1)) {
        PKCS12err(PKCS12_F_PKCS12_ITEM_I2D_ENCRYPT, PKCS12_R_ENCRYPT_ERROR);
        OPENSSL_free(in);
        goto err;
    }
    if (zbuf)
        OPENSSL_cleanse(in, inlen);
    OPENSSL_free(in);
    return oct;
 err:
    ASN1_OCTET_STRING_free(oct);
    return ((void*)0);
}
