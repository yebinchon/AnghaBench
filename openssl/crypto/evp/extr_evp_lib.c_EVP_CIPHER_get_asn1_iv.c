
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iv ;
typedef int EVP_CIPHER_CTX ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_get_octetstring (int *,unsigned char*,unsigned int) ;
 unsigned int EVP_CIPHER_CTX_iv_length (int *) ;
 int EVP_CipherInit_ex (int *,int *,int *,int *,unsigned char*,int) ;
 int EVP_MAX_IV_LENGTH ;
 int ossl_assert (int) ;

int EVP_CIPHER_get_asn1_iv(EVP_CIPHER_CTX *ctx, ASN1_TYPE *type)
{
    int i = 0;
    unsigned int l;

    if (type != ((void*)0)) {
        unsigned char iv[EVP_MAX_IV_LENGTH];

        l = EVP_CIPHER_CTX_iv_length(ctx);
        if (!ossl_assert(l <= sizeof(iv)))
            return -1;
        i = ASN1_TYPE_get_octetstring(type, iv, l);
        if (i != (int)l)
            return -1;

        if (!EVP_CipherInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), iv, -1))
            return -1;
    }
    return i;
}
