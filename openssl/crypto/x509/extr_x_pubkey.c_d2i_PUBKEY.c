
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PUBKEY ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int X509_PUBKEY_free (int *) ;
 int * X509_PUBKEY_get (int *) ;
 int * d2i_X509_PUBKEY (int *,unsigned char const**,long) ;

EVP_PKEY *d2i_PUBKEY(EVP_PKEY **a, const unsigned char **pp, long length)
{
    X509_PUBKEY *xpk;
    EVP_PKEY *pktmp;
    const unsigned char *q;

    q = *pp;
    xpk = d2i_X509_PUBKEY(((void*)0), &q, length);
    if (xpk == ((void*)0))
        return ((void*)0);
    pktmp = X509_PUBKEY_get(xpk);
    X509_PUBKEY_free(xpk);
    if (pktmp == ((void*)0))
        return ((void*)0);
    *pp = q;
    if (a != ((void*)0)) {
        EVP_PKEY_free(*a);
        *a = pktmp;
    }
    return pktmp;
}
