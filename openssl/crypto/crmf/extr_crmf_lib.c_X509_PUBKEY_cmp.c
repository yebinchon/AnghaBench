
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PUBKEY ;
typedef int X509_ALGOR ;


 int EVP_PKEY_cmp (int ,int ) ;
 int X509_ALGOR_cmp (int *,int *) ;
 int X509_PUBKEY_get0 (int *) ;
 int X509_PUBKEY_get0_param (int *,int *,int *,int **,int *) ;

__attribute__((used)) static int X509_PUBKEY_cmp(X509_PUBKEY *a, X509_PUBKEY *b)
{
    X509_ALGOR *algA = ((void*)0), *algB = ((void*)0);
    int res = 0;

    if (a == b)
        return 0;
    if (a == ((void*)0) || !X509_PUBKEY_get0_param(((void*)0), ((void*)0), ((void*)0), &algA, a)
            || algA == ((void*)0))
        return -1;
    if (b == ((void*)0) || !X509_PUBKEY_get0_param(((void*)0), ((void*)0), ((void*)0), &algB, b)
            || algB == ((void*)0))
        return 1;
    if ((res = X509_ALGOR_cmp(algA, algB)) != 0)
        return res;
    return EVP_PKEY_cmp(X509_PUBKEY_get0(a), X509_PUBKEY_get0(b));
}
