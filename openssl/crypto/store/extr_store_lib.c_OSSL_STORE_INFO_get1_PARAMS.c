
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * params; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ _; } ;
typedef TYPE_2__ OSSL_STORE_INFO ;
typedef int EVP_PKEY ;


 int EVP_PKEY_up_ref (int *) ;
 int OSSL_STORE_F_OSSL_STORE_INFO_GET1_PARAMS ;
 scalar_t__ OSSL_STORE_INFO_PARAMS ;
 int OSSL_STORE_R_NOT_PARAMETERS ;
 int OSSL_STOREerr (int ,int ) ;

EVP_PKEY *OSSL_STORE_INFO_get1_PARAMS(const OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_PARAMS) {
        EVP_PKEY_up_ref(info->_.params);
        return info->_.params;
    }
    OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_GET1_PARAMS,
                  OSSL_STORE_R_NOT_PARAMETERS);
    return ((void*)0);
}
