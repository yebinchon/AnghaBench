
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int module; } ;
typedef TYPE_1__ OSSL_PROVIDER ;


 char const* DSO_get_filename (int ) ;

const char *ossl_provider_module_name(const OSSL_PROVIDER *prov)
{



    return DSO_get_filename(prov->module);

}
