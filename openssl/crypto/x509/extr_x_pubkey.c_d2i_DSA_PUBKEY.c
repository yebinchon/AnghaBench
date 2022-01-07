
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int DSA ;


 int DSA_free (int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_get1_DSA (int *) ;
 int * d2i_PUBKEY (int *,unsigned char const**,long) ;

DSA *d2i_DSA_PUBKEY(DSA **a, const unsigned char **pp, long length)
{
    EVP_PKEY *pkey;
    DSA *key;
    const unsigned char *q;

    q = *pp;
    pkey = d2i_PUBKEY(((void*)0), &q, length);
    if (pkey == ((void*)0))
        return ((void*)0);
    key = EVP_PKEY_get1_DSA(pkey);
    EVP_PKEY_free(pkey);
    if (key == ((void*)0))
        return ((void*)0);
    *pp = q;
    if (a != ((void*)0)) {
        DSA_free(*a);
        *a = key;
    }
    return key;
}
