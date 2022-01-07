
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; int * id; } ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_ADD ;
 int ENGINE_R_ID_OR_NAME_MISSING ;
 int ENGINE_R_INTERNAL_LIST_ERROR ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int engine_list_add (TYPE_1__*) ;
 int global_engine_lock ;

int ENGINE_add(ENGINE *e)
{
    int to_return = 1;
    if (e == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_ADD, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if ((e->id == ((void*)0)) || (e->name == ((void*)0))) {
        ENGINEerr(ENGINE_F_ENGINE_ADD, ENGINE_R_ID_OR_NAME_MISSING);
        return 0;
    }
    CRYPTO_THREAD_write_lock(global_engine_lock);
    if (!engine_list_add(e)) {
        ENGINEerr(ENGINE_F_ENGINE_ADD, ENGINE_R_INTERNAL_LIST_ERROR);
        to_return = 0;
    }
    CRYPTO_THREAD_unlock(global_engine_lock);
    return to_return;
}
