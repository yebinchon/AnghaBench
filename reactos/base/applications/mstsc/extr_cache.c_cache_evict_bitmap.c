
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8 ;
typedef size_t uint16 ;
struct TYPE_2__ {int next; int previous; scalar_t__ bitmap; } ;


 int DEBUG_RDP5 (char*) ;
 int IS_PERSISTENT (size_t) ;
 int NOT_SET ;
 TYPE_1__** g_bmpcache ;
 int * g_bmpcache_count ;
 size_t* g_bmpcache_lru ;
 int pstcache_touch_bitmap (size_t,size_t,int ) ;
 int ui_destroy_bitmap (scalar_t__) ;

void
cache_evict_bitmap(uint8 id)
{
 uint16 idx;
 int n_idx;

 if (!IS_PERSISTENT(id))
  return;

 idx = g_bmpcache_lru[id];
 n_idx = g_bmpcache[id][idx].next;
 DEBUG_RDP5(("evict bitmap: id=%d idx=%d n_idx=%d bmp=%p\n", id, idx, n_idx,
      g_bmpcache[id][idx].bitmap));

 ui_destroy_bitmap(g_bmpcache[id][idx].bitmap);
 --g_bmpcache_count[id];
 g_bmpcache[id][idx].bitmap = 0;

 g_bmpcache_lru[id] = n_idx;
 g_bmpcache[id][n_idx].previous = NOT_SET;

 pstcache_touch_bitmap(id, idx, 0);
}
