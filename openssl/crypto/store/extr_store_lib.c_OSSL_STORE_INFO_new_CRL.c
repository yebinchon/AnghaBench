
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;
typedef int OSSL_STORE_INFO ;


 int ERR_R_MALLOC_FAILURE ;
 int OSSL_STORE_F_OSSL_STORE_INFO_NEW_CRL ;
 int OSSL_STORE_INFO_CRL ;
 int OSSL_STOREerr (int ,int ) ;
 int * store_info_new (int ,int *) ;

OSSL_STORE_INFO *OSSL_STORE_INFO_new_CRL(X509_CRL *crl)
{
    OSSL_STORE_INFO *info = store_info_new(OSSL_STORE_INFO_CRL, crl);

    if (info == ((void*)0))
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_NEW_CRL,
                      ERR_R_MALLOC_FAILURE);
    return info;
}
