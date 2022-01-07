
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iv ;
typedef int EVP_CIPHER_CTX ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_get_int_octetstring (int *,long*,unsigned char*,unsigned int) ;
 scalar_t__ EVP_CIPHER_CTX_ctrl (int *,int ,int,int *) ;
 unsigned int EVP_CIPHER_CTX_iv_length (int *) ;
 scalar_t__ EVP_CIPHER_CTX_set_key_length (int *,int) ;
 int EVP_CTRL_SET_RC2_KEY_BITS ;
 int EVP_CipherInit_ex (int *,int *,int *,int *,unsigned char*,int) ;
 int EVP_MAX_IV_LENGTH ;
 int OPENSSL_assert (int) ;
 int rc2_magic_to_meth (int) ;

__attribute__((used)) static int rc2_get_asn1_type_and_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    long num = 0;
    int i = 0;
    int key_bits;
    unsigned int l;
    unsigned char iv[EVP_MAX_IV_LENGTH];

    if (type != ((void*)0)) {
        l = EVP_CIPHER_CTX_iv_length(c);
        OPENSSL_assert(l <= sizeof(iv));
        i = ASN1_TYPE_get_int_octetstring(type, &num, iv, l);
        if (i != (int)l)
            return -1;
        key_bits = rc2_magic_to_meth((int)num);
        if (!key_bits)
            return -1;
        if (i > 0 && !EVP_CipherInit_ex(c, ((void*)0), ((void*)0), ((void*)0), iv, -1))
            return -1;
        if (EVP_CIPHER_CTX_ctrl(c, EVP_CTRL_SET_RC2_KEY_BITS, key_bits,
                                ((void*)0)) <= 0
                || EVP_CIPHER_CTX_set_key_length(c, key_bits / 8) <= 0)
            return -1;
    }
    return i;
}
