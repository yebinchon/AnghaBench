
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arg; int function; } ;
typedef int RelcacheCallbackFunction ;
typedef int Datum ;


 int FATAL ;
 size_t MAX_RELCACHE_CALLBACKS ;
 int elog (int ,char*) ;
 size_t relcache_callback_count ;
 TYPE_1__* relcache_callback_list ;

void
CacheRegisterRelcacheCallback(RelcacheCallbackFunction func,
         Datum arg)
{
 if (relcache_callback_count >= MAX_RELCACHE_CALLBACKS)
  elog(FATAL, "out of relcache_callback_list slots");

 relcache_callback_list[relcache_callback_count].function = func;
 relcache_callback_list[relcache_callback_count].arg = arg;

 ++relcache_callback_count;
}
