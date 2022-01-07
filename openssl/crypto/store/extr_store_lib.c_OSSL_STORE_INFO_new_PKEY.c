
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_STORE_INFO ;
typedef int EVP_PKEY ;


 int ERR_R_MALLOC_FAILURE ;
 int OSSL_STORE_F_OSSL_STORE_INFO_NEW_PKEY ;
 int OSSL_STORE_INFO_PKEY ;
 int OSSL_STOREerr (int ,int ) ;
 int * store_info_new (int ,int *) ;

OSSL_STORE_INFO *OSSL_STORE_INFO_new_PKEY(EVP_PKEY *pkey)
{
    OSSL_STORE_INFO *info = store_info_new(OSSL_STORE_INFO_PKEY, pkey);

    if (info == ((void*)0))
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_NEW_PKEY,
                      ERR_R_MALLOC_FAILURE);
    return info;
}
