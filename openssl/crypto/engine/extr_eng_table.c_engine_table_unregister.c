
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int piles; } ;
typedef TYPE_1__ ENGINE_TABLE ;
typedef int ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int global_engine_lock ;
 scalar_t__ int_table_check (TYPE_1__**,int ) ;
 int int_unregister_cb ;
 int lh_ENGINE_PILE_doall_ENGINE (int *,int ,int *) ;

void engine_table_unregister(ENGINE_TABLE **table, ENGINE *e)
{
    CRYPTO_THREAD_write_lock(global_engine_lock);
    if (int_table_check(table, 0))
        lh_ENGINE_PILE_doall_ENGINE(&(*table)->piles, int_unregister_cb, e);
    CRYPTO_THREAD_unlock(global_engine_lock);
}
