
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 int app_pkey_methods ;
 int * sk_EVP_PKEY_METHOD_delete_ptr (int ,int const*) ;

int EVP_PKEY_meth_remove(const EVP_PKEY_METHOD *pmeth)
{
    const EVP_PKEY_METHOD *ret;

    ret = sk_EVP_PKEY_METHOD_delete_ptr(app_pkey_methods, pmeth);

    return ret == ((void*)0) ? 0 : 1;
}
