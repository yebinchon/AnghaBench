
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* value; struct TYPE_8__* name; } ;
struct TYPE_7__ {int * parameters; } ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef TYPE_2__ INFOPAIR ;


 int CRYPTO_F_OSSL_PROVIDER_ADD_PARAMETER ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_2__*) ;
 void* OPENSSL_strdup (char const*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int * sk_INFOPAIR_new_null () ;
 scalar_t__ sk_INFOPAIR_push (int *,TYPE_2__*) ;

int ossl_provider_add_parameter(OSSL_PROVIDER *prov,
                                const char *name, const char *value)
{
    INFOPAIR *pair = ((void*)0);

    if ((pair = OPENSSL_zalloc(sizeof(*pair))) != ((void*)0)
        && (prov->parameters != ((void*)0)
            || (prov->parameters = sk_INFOPAIR_new_null()) != ((void*)0))
        && (pair->name = OPENSSL_strdup(name)) != ((void*)0)
        && (pair->value = OPENSSL_strdup(value)) != ((void*)0)
        && sk_INFOPAIR_push(prov->parameters, pair) > 0)
        return 1;

    if (pair != ((void*)0)) {
        OPENSSL_free(pair->name);
        OPENSSL_free(pair->value);
        OPENSSL_free(pair);
    }
    CRYPTOerr(CRYPTO_F_OSSL_PROVIDER_ADD_PARAMETER, ERR_R_MALLOC_FAILURE);
    return 0;
}
