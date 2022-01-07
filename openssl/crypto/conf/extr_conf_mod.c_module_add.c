
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int conf_init_func ;
typedef int conf_finish_func ;
struct TYPE_7__ {struct TYPE_7__* name; int * finish; int * init; int * dso; } ;
typedef int DSO ;
typedef TYPE_1__ CONF_MODULE ;


 int CONF_F_MODULE_ADD ;
 int CONFerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int * sk_CONF_MODULE_new_null () ;
 int sk_CONF_MODULE_push (int *,TYPE_1__*) ;
 int * supported_modules ;

__attribute__((used)) static CONF_MODULE *module_add(DSO *dso, const char *name,
                               conf_init_func *ifunc, conf_finish_func *ffunc)
{
    CONF_MODULE *tmod = ((void*)0);
    if (supported_modules == ((void*)0))
        supported_modules = sk_CONF_MODULE_new_null();
    if (supported_modules == ((void*)0))
        return ((void*)0);
    if ((tmod = OPENSSL_zalloc(sizeof(*tmod))) == ((void*)0)) {
        CONFerr(CONF_F_MODULE_ADD, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    tmod->dso = dso;
    tmod->name = OPENSSL_strdup(name);
    tmod->init = ifunc;
    tmod->finish = ffunc;
    if (tmod->name == ((void*)0)) {
        OPENSSL_free(tmod);
        return ((void*)0);
    }

    if (!sk_CONF_MODULE_push(supported_modules, tmod)) {
        OPENSSL_free(tmod->name);
        OPENSSL_free(tmod);
        return ((void*)0);
    }

    return tmod;
}
