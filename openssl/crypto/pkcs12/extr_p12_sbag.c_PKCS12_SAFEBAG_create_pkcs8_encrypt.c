
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_SIG ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef int PKCS12_SAFEBAG ;
typedef int EVP_CIPHER ;


 int * EVP_get_cipherbynid (int) ;
 int * PKCS12_SAFEBAG_create0_pkcs8 (int *) ;
 int * PKCS8_encrypt (int,int const*,char const*,int,unsigned char*,int,int,int *) ;
 int X509_SIG_free (int *) ;

PKCS12_SAFEBAG *PKCS12_SAFEBAG_create_pkcs8_encrypt(int pbe_nid,
                                                    const char *pass,
                                                    int passlen,
                                                    unsigned char *salt,
                                                    int saltlen, int iter,
                                                    PKCS8_PRIV_KEY_INFO *p8inf)
{
    PKCS12_SAFEBAG *bag;
    const EVP_CIPHER *pbe_ciph;
    X509_SIG *p8;

    pbe_ciph = EVP_get_cipherbynid(pbe_nid);
    if (pbe_ciph)
        pbe_nid = -1;

    p8 = PKCS8_encrypt(pbe_nid, pbe_ciph, pass, passlen, salt, saltlen, iter,
                       p8inf);
    if (p8 == ((void*)0))
        return ((void*)0);

    bag = PKCS12_SAFEBAG_create0_pkcs8(p8);
    if (bag == ((void*)0))
        X509_SIG_free(p8);

    return bag;
}
