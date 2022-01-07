
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_PKEY_meth_free ;
 int * app_pkey_methods ;
 int sk_EVP_PKEY_METHOD_pop_free (int *,int ) ;

void evp_app_cleanup_int(void)
{
    if (app_pkey_methods != ((void*)0))
        sk_EVP_PKEY_METHOD_pop_free(app_pkey_methods, EVP_PKEY_meth_free);
}
