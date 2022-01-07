
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int struct_ref; struct TYPE_6__* prev; } ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_GET_PREV ;
 int ENGINE_free (TYPE_1__*) ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int engine_ref_debug (TYPE_1__*,int ,int) ;
 int global_engine_lock ;

ENGINE *ENGINE_get_prev(ENGINE *e)
{
    ENGINE *ret = ((void*)0);
    if (e == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_GET_PREV, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    CRYPTO_THREAD_write_lock(global_engine_lock);
    ret = e->prev;
    if (ret) {

        ret->struct_ref++;
        engine_ref_debug(ret, 0, 1);
    }
    CRYPTO_THREAD_unlock(global_engine_lock);

    ENGINE_free(e);
    return ret;
}
