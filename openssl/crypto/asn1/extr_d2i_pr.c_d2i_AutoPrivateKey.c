
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS8_PRIV_KEY_INFO ;
typedef int EVP_PKEY ;


 int ASN1_F_D2I_AUTOPRIVATEKEY ;
 int ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE ;
 int ASN1_TYPE ;
 int ASN1_TYPE_free ;
 int ASN1err (int ,int ) ;
 int * EVP_PKCS82PKEY (int *) ;
 int EVP_PKEY_DSA ;
 int EVP_PKEY_EC ;
 int EVP_PKEY_RSA ;
 int PKCS8_PRIV_KEY_INFO_free (int *) ;
 int STACK_OF (int ) ;
 int d2i_ASN1_SEQUENCE_ANY (int *,unsigned char const**,long) ;
 int * d2i_PKCS8_PRIV_KEY_INFO (int *,unsigned char const**,long) ;
 int * d2i_PrivateKey (int,int **,unsigned char const**,long) ;
 int inkey ;
 int sk_ASN1_TYPE_num (int) ;
 int sk_ASN1_TYPE_pop_free (int,int ) ;

EVP_PKEY *d2i_AutoPrivateKey(EVP_PKEY **a, const unsigned char **pp,
                             long length)
{
    STACK_OF(ASN1_TYPE) *inkey;
    const unsigned char *p;
    int keytype;
    p = *pp;





    inkey = d2i_ASN1_SEQUENCE_ANY(((void*)0), &p, length);
    p = *pp;




    if (sk_ASN1_TYPE_num(inkey) == 6)
        keytype = EVP_PKEY_DSA;
    else if (sk_ASN1_TYPE_num(inkey) == 4)
        keytype = EVP_PKEY_EC;
    else if (sk_ASN1_TYPE_num(inkey) == 3) {

        PKCS8_PRIV_KEY_INFO *p8 = d2i_PKCS8_PRIV_KEY_INFO(((void*)0), &p, length);
        EVP_PKEY *ret;

        sk_ASN1_TYPE_pop_free(inkey, ASN1_TYPE_free);
        if (p8 == ((void*)0)) {
            ASN1err(ASN1_F_D2I_AUTOPRIVATEKEY,
                    ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE);
            return ((void*)0);
        }
        ret = EVP_PKCS82PKEY(p8);
        PKCS8_PRIV_KEY_INFO_free(p8);
        if (ret == ((void*)0))
            return ((void*)0);
        *pp = p;
        if (a) {
            *a = ret;
        }
        return ret;
    } else
        keytype = EVP_PKEY_RSA;
    sk_ASN1_TYPE_pop_free(inkey, ASN1_TYPE_free);
    return d2i_PrivateKey(keytype, a, pp, length);
}
