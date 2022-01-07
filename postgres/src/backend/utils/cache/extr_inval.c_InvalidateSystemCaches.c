
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SYSCACHECALLBACK {int id; int arg; int (* function ) (int ,int ,int ) ;} ;
struct RELCACHECALLBACK {int arg; int (* function ) (int ,int ) ;} ;


 int InvalidOid ;
 int InvalidateCatalogSnapshot () ;
 int RelationCacheInvalidate () ;
 int ResetCatalogCaches () ;
 int relcache_callback_count ;
 struct RELCACHECALLBACK* relcache_callback_list ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ) ;
 int syscache_callback_count ;
 struct SYSCACHECALLBACK* syscache_callback_list ;

void
InvalidateSystemCaches(void)
{
 int i;

 InvalidateCatalogSnapshot();
 ResetCatalogCaches();
 RelationCacheInvalidate();

 for (i = 0; i < syscache_callback_count; i++)
 {
  struct SYSCACHECALLBACK *ccitem = syscache_callback_list + i;

  ccitem->function(ccitem->arg, ccitem->id, 0);
 }

 for (i = 0; i < relcache_callback_count; i++)
 {
  struct RELCACHECALLBACK *ccitem = relcache_callback_list + i;

  ccitem->function(ccitem->arg, InvalidOid);
 }
}
