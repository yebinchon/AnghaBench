
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
struct SYSCACHECALLBACK {int id; int link; int arg; int (* function ) (int ,int,int ) ;} ;


 int Assert (int) ;
 int ERROR ;
 int SysCacheSize ;
 int elog (int ,char*,int) ;
 int stub1 (int ,int,int ) ;
 int* syscache_callback_links ;
 struct SYSCACHECALLBACK* syscache_callback_list ;

void
CallSyscacheCallbacks(int cacheid, uint32 hashvalue)
{
 int i;

 if (cacheid < 0 || cacheid >= SysCacheSize)
  elog(ERROR, "invalid cache ID: %d", cacheid);

 i = syscache_callback_links[cacheid] - 1;
 while (i >= 0)
 {
  struct SYSCACHECALLBACK *ccitem = syscache_callback_list + i;

  Assert(ccitem->id == cacheid);
  ccitem->function(ccitem->arg, cacheid, hashvalue);
  i = ccitem->link - 1;
 }
}
