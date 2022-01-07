
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UI_METHOD ;
struct TYPE_4__ {scalar_t__ funct_ref; int * (* load_privkey ) (TYPE_1__*,char const*,int *,void*) ;} ;
typedef int EVP_PKEY ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_LOAD_PRIVATE_KEY ;
 int ENGINE_R_FAILED_LOADING_PRIVATE_KEY ;
 int ENGINE_R_NOT_INITIALISED ;
 int ENGINE_R_NO_LOAD_FUNCTION ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int global_engine_lock ;
 int * stub1 (TYPE_1__*,char const*,int *,void*) ;

EVP_PKEY *ENGINE_load_private_key(ENGINE *e, const char *key_id,
                                  UI_METHOD *ui_method, void *callback_data)
{
    EVP_PKEY *pkey;

    if (e == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_LOAD_PRIVATE_KEY,
                  ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    CRYPTO_THREAD_write_lock(global_engine_lock);
    if (e->funct_ref == 0) {
        CRYPTO_THREAD_unlock(global_engine_lock);
        ENGINEerr(ENGINE_F_ENGINE_LOAD_PRIVATE_KEY, ENGINE_R_NOT_INITIALISED);
        return 0;
    }
    CRYPTO_THREAD_unlock(global_engine_lock);
    if (!e->load_privkey) {
        ENGINEerr(ENGINE_F_ENGINE_LOAD_PRIVATE_KEY,
                  ENGINE_R_NO_LOAD_FUNCTION);
        return 0;
    }
    pkey = e->load_privkey(e, key_id, ui_method, callback_data);
    if (pkey == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_LOAD_PRIVATE_KEY,
                  ENGINE_R_FAILED_LOADING_PRIVATE_KEY);
        return 0;
    }
    return pkey;
}
