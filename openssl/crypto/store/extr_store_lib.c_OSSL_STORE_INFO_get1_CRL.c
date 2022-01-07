
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_CRL ;
struct TYPE_4__ {int * crl; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ _; } ;
typedef TYPE_2__ OSSL_STORE_INFO ;


 int OSSL_STORE_F_OSSL_STORE_INFO_GET1_CRL ;
 scalar_t__ OSSL_STORE_INFO_CRL ;
 int OSSL_STORE_R_NOT_A_CRL ;
 int OSSL_STOREerr (int ,int ) ;
 int X509_CRL_up_ref (int *) ;

X509_CRL *OSSL_STORE_INFO_get1_CRL(const OSSL_STORE_INFO *info)
{
    if (info->type == OSSL_STORE_INFO_CRL) {
        X509_CRL_up_ref(info->_.crl);
        return info->_.crl;
    }
    OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INFO_GET1_CRL,
                  OSSL_STORE_R_NOT_A_CRL);
    return ((void*)0);
}
