
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slock_t ;


 int ERROR ;
 int elog (int ,char*) ;

bool
s_lock_free_sema(volatile slock_t *lock)
{

 elog(ERROR, "spin.c does not support S_LOCK_FREE()");
 return 0;
}
