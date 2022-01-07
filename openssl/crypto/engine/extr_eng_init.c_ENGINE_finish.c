
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_FINISH ;
 int ENGINE_R_FINISH_FAILED ;
 int ENGINEerr (int ,int ) ;
 int engine_unlocked_finish (int *,int) ;
 int global_engine_lock ;

int ENGINE_finish(ENGINE *e)
{
    int to_return = 1;

    if (e == ((void*)0))
        return 1;
    CRYPTO_THREAD_write_lock(global_engine_lock);
    to_return = engine_unlocked_finish(e, 1);
    CRYPTO_THREAD_unlock(global_engine_lock);
    if (!to_return) {
        ENGINEerr(ENGINE_F_ENGINE_FINISH, ENGINE_R_FINISH_FAILED);
        return 0;
    }
    return to_return;
}
