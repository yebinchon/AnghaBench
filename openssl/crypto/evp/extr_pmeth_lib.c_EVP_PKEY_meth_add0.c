
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_PKEY_METH_ADD0 ;
 int EVPerr (int ,int ) ;
 int * app_pkey_methods ;
 int pmeth_cmp ;
 int * sk_EVP_PKEY_METHOD_new (int ) ;
 int sk_EVP_PKEY_METHOD_push (int *,int const*) ;
 int sk_EVP_PKEY_METHOD_sort (int *) ;

int EVP_PKEY_meth_add0(const EVP_PKEY_METHOD *pmeth)
{
    if (app_pkey_methods == ((void*)0)) {
        app_pkey_methods = sk_EVP_PKEY_METHOD_new(pmeth_cmp);
        if (app_pkey_methods == ((void*)0)){
            EVPerr(EVP_F_EVP_PKEY_METH_ADD0, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
    if (!sk_EVP_PKEY_METHOD_push(app_pkey_methods, pmeth)) {
        EVPerr(EVP_F_EVP_PKEY_METH_ADD0, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    sk_EVP_PKEY_METHOD_sort(app_pkey_methods);
    return 1;
}
