
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* (* exportdomparam_types ) () ;} ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_KEYMGMT ;


 int const* stub1 () ;

const OSSL_PARAM *evp_keymgmt_exportdomparam_types(const EVP_KEYMGMT *keymgmt)
{
    return keymgmt->exportdomparam_types();
}
