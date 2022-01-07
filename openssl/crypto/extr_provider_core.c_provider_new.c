
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * init_function; int * name; int * refcnt_lock; } ;
typedef int OSSL_provider_init_fn ;
typedef TYPE_1__ OSSL_PROVIDER ;


 int CRYPTO_F_PROVIDER_NEW ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int ossl_provider_free (TYPE_1__*) ;
 int ossl_provider_up_ref (TYPE_1__*) ;

__attribute__((used)) static OSSL_PROVIDER *provider_new(const char *name,
                                   OSSL_provider_init_fn *init_function)
{
    OSSL_PROVIDER *prov = ((void*)0);

    if ((prov = OPENSSL_zalloc(sizeof(*prov))) == ((void*)0)

        || (prov->refcnt_lock = CRYPTO_THREAD_lock_new()) == ((void*)0)

        || !ossl_provider_up_ref(prov)
        || (prov->name = OPENSSL_strdup(name)) == ((void*)0)) {
        ossl_provider_free(prov);
        CRYPTOerr(CRYPTO_F_PROVIDER_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    prov->init_function = init_function;
    return prov;
}
