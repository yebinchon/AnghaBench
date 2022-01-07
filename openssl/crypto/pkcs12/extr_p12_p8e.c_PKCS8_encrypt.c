
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_SIG ;
typedef int X509_ALGOR ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef int EVP_CIPHER ;


 int ERR_R_ASN1_LIB ;
 int ERR_clear_error () ;
 int EVP_PBE_TYPE_PRF ;
 scalar_t__ EVP_PBE_find (int ,int,int *,int *,int ) ;
 int PKCS12_F_PKCS8_ENCRYPT ;
 int PKCS12err (int ,int ) ;
 int * PKCS5_pbe2_set (int const*,int,unsigned char*,int) ;
 int * PKCS5_pbe2_set_iv (int const*,int,unsigned char*,int,int *,int) ;
 int * PKCS5_pbe_set (int,int,unsigned char*,int) ;
 int * PKCS8_set0_pbe (char const*,int,int *,int *) ;
 int X509_ALGOR_free (int *) ;

X509_SIG *PKCS8_encrypt(int pbe_nid, const EVP_CIPHER *cipher,
                        const char *pass, int passlen,
                        unsigned char *salt, int saltlen, int iter,
                        PKCS8_PRIV_KEY_INFO *p8inf)
{
    X509_SIG *p8 = ((void*)0);
    X509_ALGOR *pbe;

    if (pbe_nid == -1)
        pbe = PKCS5_pbe2_set(cipher, iter, salt, saltlen);
    else if (EVP_PBE_find(EVP_PBE_TYPE_PRF, pbe_nid, ((void*)0), ((void*)0), 0))
        pbe = PKCS5_pbe2_set_iv(cipher, iter, salt, saltlen, ((void*)0), pbe_nid);
    else {
        ERR_clear_error();
        pbe = PKCS5_pbe_set(pbe_nid, iter, salt, saltlen);
    }
    if (pbe == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS8_ENCRYPT, ERR_R_ASN1_LIB);
        return ((void*)0);
    }
    p8 = PKCS8_set0_pbe(pass, passlen, p8inf, pbe);
    if (p8 == ((void*)0)) {
        X509_ALGOR_free(pbe);
        return ((void*)0);
    }

    return p8;
}
