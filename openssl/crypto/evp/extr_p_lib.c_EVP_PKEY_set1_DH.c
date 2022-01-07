
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int DH ;


 int DH_up_ref (int *) ;
 int EVP_PKEY_assign_DH (int *,int *) ;

int EVP_PKEY_set1_DH(EVP_PKEY *pkey, DH *key)
{
    int ret = EVP_PKEY_assign_DH(pkey, key);
    if (ret)
        DH_up_ref(key);
    return ret;
}
