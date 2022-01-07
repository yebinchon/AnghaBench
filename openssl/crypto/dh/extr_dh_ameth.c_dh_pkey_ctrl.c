
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;




 int EVP_PKEY_get0_DH (int *) ;
 int dh_buf2key (int ,void*,long) ;
 int dh_key2buf (int ,void*) ;

__attribute__((used)) static int dh_pkey_ctrl(EVP_PKEY *pkey, int op, long arg1, void *arg2)
{
    switch (op) {
    case 128:
        return dh_buf2key(EVP_PKEY_get0_DH(pkey), arg2, arg1);
    case 129:
        return dh_key2buf(EVP_PKEY_get0_DH(pkey), arg2);
    default:
        return -2;
    }
}
