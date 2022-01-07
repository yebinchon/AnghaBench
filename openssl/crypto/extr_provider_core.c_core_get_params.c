
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* name; int value; } ;
struct TYPE_6__ {int * parameters; int name; } ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ INFOPAIR ;


 int OPENSSL_VERSION_STR ;
 int * OSSL_PARAM_locate (int *,char*) ;
 int OSSL_PARAM_set_utf8_ptr (int *,int ) ;
 char* OSSL_PROV_PARAM_MODULE_FILENAME ;
 int ossl_provider_module_path (TYPE_1__ const*) ;
 int sk_INFOPAIR_num (int *) ;
 TYPE_2__* sk_INFOPAIR_value (int *,int) ;

__attribute__((used)) static int core_get_params(const OSSL_PROVIDER *prov, OSSL_PARAM params[])
{
    int i;
    OSSL_PARAM *p;

    if ((p = OSSL_PARAM_locate(params, "openssl-version")) != ((void*)0))
        OSSL_PARAM_set_utf8_ptr(p, OPENSSL_VERSION_STR);
    if ((p = OSSL_PARAM_locate(params, "provider-name")) != ((void*)0))
        OSSL_PARAM_set_utf8_ptr(p, prov->name);


    if ((p = OSSL_PARAM_locate(params, OSSL_PROV_PARAM_MODULE_FILENAME)) != ((void*)0))
        OSSL_PARAM_set_utf8_ptr(p, ossl_provider_module_path(prov));


    if (prov->parameters == ((void*)0))
        return 1;

    for (i = 0; i < sk_INFOPAIR_num(prov->parameters); i++) {
        INFOPAIR *pair = sk_INFOPAIR_value(prov->parameters, i);

        if ((p = OSSL_PARAM_locate(params, pair->name)) != ((void*)0))
            OSSL_PARAM_set_utf8_ptr(p, pair->value);
    }
    return 1;
}
