
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_INIT ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int RUN_ONCE (int *,int ) ;
 int do_engine_lock_init ;
 int engine_lock_init ;
 int engine_unlocked_init (int *) ;
 int global_engine_lock ;

int ENGINE_init(ENGINE *e)
{
    int ret;
    if (e == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_INIT, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (!RUN_ONCE(&engine_lock_init, do_engine_lock_init)) {
        ENGINEerr(ENGINE_F_ENGINE_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    CRYPTO_THREAD_write_lock(global_engine_lock);
    ret = engine_unlocked_init(e);
    CRYPTO_THREAD_unlock(global_engine_lock);
    return ret;
}
