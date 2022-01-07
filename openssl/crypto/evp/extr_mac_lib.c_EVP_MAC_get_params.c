
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_params ) (int *) ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_MAC ;


 int stub1 (int *) ;

int EVP_MAC_get_params(EVP_MAC *mac, OSSL_PARAM params[])
{
    if (mac->get_params != ((void*)0))
        return mac->get_params(params);
    return 1;
}
