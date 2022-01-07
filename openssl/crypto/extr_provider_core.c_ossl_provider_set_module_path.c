
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * path; } ;
typedef TYPE_1__ OSSL_PROVIDER ;


 int CRYPTO_F_OSSL_PROVIDER_SET_MODULE_PATH ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_strdup (char const*) ;

int ossl_provider_set_module_path(OSSL_PROVIDER *prov, const char *module_path)
{
    OPENSSL_free(prov->path);
    if (module_path == ((void*)0))
        return 1;
    if ((prov->path = OPENSSL_strdup(module_path)) != ((void*)0))
        return 1;
    CRYPTOerr(CRYPTO_F_OSSL_PROVIDER_SET_MODULE_PATH, ERR_R_MALLOC_FAILURE);
    return 0;
}
