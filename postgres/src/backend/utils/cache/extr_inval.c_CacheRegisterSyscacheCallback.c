
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; int id; int arg; int function; } ;
typedef int SyscacheCallbackFunction ;
typedef int Datum ;


 int FATAL ;
 int MAX_SYSCACHE_CALLBACKS ;
 int SysCacheSize ;
 int elog (int ,char*,...) ;
 int syscache_callback_count ;
 int* syscache_callback_links ;
 TYPE_1__* syscache_callback_list ;

void
CacheRegisterSyscacheCallback(int cacheid,
         SyscacheCallbackFunction func,
         Datum arg)
{
 if (cacheid < 0 || cacheid >= SysCacheSize)
  elog(FATAL, "invalid cache ID: %d", cacheid);
 if (syscache_callback_count >= MAX_SYSCACHE_CALLBACKS)
  elog(FATAL, "out of syscache_callback_list slots");

 if (syscache_callback_links[cacheid] == 0)
 {

  syscache_callback_links[cacheid] = syscache_callback_count + 1;
 }
 else
 {

  int i = syscache_callback_links[cacheid] - 1;

  while (syscache_callback_list[i].link > 0)
   i = syscache_callback_list[i].link - 1;
  syscache_callback_list[i].link = syscache_callback_count + 1;
 }

 syscache_callback_list[syscache_callback_count].id = cacheid;
 syscache_callback_list[syscache_callback_count].link = 0;
 syscache_callback_list[syscache_callback_count].function = func;
 syscache_callback_list[syscache_callback_count].arg = arg;

 ++syscache_callback_count;
}
