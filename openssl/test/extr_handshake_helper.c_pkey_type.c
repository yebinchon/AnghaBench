
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_GROUP_get_curve_name (int ) ;
 int EC_KEY_get0_group (int const*) ;
 int EVP_PKEY_EC ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 int EVP_PKEY_id (int *) ;

__attribute__((used)) static int pkey_type(EVP_PKEY *pkey)
{
    int nid = EVP_PKEY_id(pkey);


    if (nid == EVP_PKEY_EC) {
        const EC_KEY *ec = EVP_PKEY_get0_EC_KEY(pkey);
        return EC_GROUP_get_curve_name(EC_KEY_get0_group(ec));
    }

    return nid;
}
