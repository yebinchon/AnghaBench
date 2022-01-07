
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int * d2i_PUBKEY (int *,unsigned char const**,long) ;

EC_KEY *d2i_EC_PUBKEY(EC_KEY **a, const unsigned char **pp, long length)
{
    EVP_PKEY *pkey;
    EC_KEY *key;
    const unsigned char *q;

    q = *pp;
    pkey = d2i_PUBKEY(((void*)0), &q, length);
    if (pkey == ((void*)0))
        return ((void*)0);
    key = EVP_PKEY_get1_EC_KEY(pkey);
    EVP_PKEY_free(pkey);
    if (key == ((void*)0))
        return ((void*)0);
    *pp = q;
    if (a != ((void*)0)) {
        EC_KEY_free(*a);
        *a = key;
    }
    return key;
}
