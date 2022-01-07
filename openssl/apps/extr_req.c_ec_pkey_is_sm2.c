
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 scalar_t__ EC_GROUP_get_curve_name (int const*) ;
 int * EC_KEY_get0_group (int *) ;
 scalar_t__ EVP_PKEY_EC ;
 scalar_t__ EVP_PKEY_SM2 ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 scalar_t__ NID_sm2 ;

__attribute__((used)) static int ec_pkey_is_sm2(EVP_PKEY *pkey)
{
    EC_KEY *eckey = ((void*)0);
    const EC_GROUP *group = ((void*)0);

    if (EVP_PKEY_id(pkey) == EVP_PKEY_SM2)
        return 1;
    if (EVP_PKEY_id(pkey) == EVP_PKEY_EC
            && (eckey = EVP_PKEY_get0_EC_KEY(pkey)) != ((void*)0)
            && (group = EC_KEY_get0_group(eckey)) != ((void*)0)
            && EC_GROUP_get_curve_name(group) == NID_sm2)
        return 1;
    return 0;
}
