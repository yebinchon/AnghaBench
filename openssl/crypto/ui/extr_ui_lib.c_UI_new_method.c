
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UI_METHOD ;
struct TYPE_6__ {int ex_data; int const* meth; int * lock; } ;
typedef TYPE_1__ UI ;


 int CRYPTO_EX_INDEX_UI ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int UI_F_UI_NEW_METHOD ;
 int * UI_get_default_method () ;
 int * UI_null () ;
 int UIerr (int ,int ) ;

UI *UI_new_method(const UI_METHOD *method)
{
    UI *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        UIerr(UI_F_UI_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        UIerr(UI_F_UI_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }

    if (method == ((void*)0))
        method = UI_get_default_method();
    if (method == ((void*)0))
        method = UI_null();
    ret->meth = method;

    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_UI, ret, &ret->ex_data)) {
        OPENSSL_free(ret);
        return ((void*)0);
    }
    return ret;
}
