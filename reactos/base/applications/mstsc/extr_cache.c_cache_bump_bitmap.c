
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8 ;
typedef size_t uint16 ;
struct TYPE_2__ {int next; int previous; } ;


 int DEBUG_RDP5 (char*) ;
 int IS_PERSISTENT (size_t) ;
 scalar_t__ IS_SET (int) ;
 int NOT_SET ;
 TYPE_1__** g_bmpcache ;
 int * g_bmpcache_count ;
 int* g_bmpcache_lru ;
 size_t* g_bmpcache_mru ;

void
cache_bump_bitmap(uint8 id, uint16 idx, int bump)
{
 int p_idx, n_idx, n;

 if (!IS_PERSISTENT(id))
  return;

 if (g_bmpcache_mru[id] == idx)
  return;

 DEBUG_RDP5(("bump bitmap: id=%d, idx=%d, bump=%d\n", id, idx, bump));

 n_idx = g_bmpcache[id][idx].next;
 p_idx = g_bmpcache[id][idx].previous;

 if (IS_SET(n_idx))
 {

  --g_bmpcache_count[id];
  if (IS_SET(p_idx))
   g_bmpcache[id][p_idx].next = n_idx;
  else
   g_bmpcache_lru[id] = n_idx;
  if (IS_SET(n_idx))
   g_bmpcache[id][n_idx].previous = p_idx;
  else
   g_bmpcache_mru[id] = p_idx;
 }
 else
 {
  p_idx = NOT_SET;
  n_idx = g_bmpcache_lru[id];
 }

 if (bump >= 0)
 {
  for (n = 0; n < bump && IS_SET(n_idx); n++)
  {
   p_idx = n_idx;
   n_idx = g_bmpcache[id][p_idx].next;
  }
 }
 else
 {
  p_idx = g_bmpcache_mru[id];
  n_idx = NOT_SET;
 }


 ++g_bmpcache_count[id];
 g_bmpcache[id][idx].previous = p_idx;
 g_bmpcache[id][idx].next = n_idx;

 if (p_idx >= 0)
  g_bmpcache[id][p_idx].next = idx;
 else
  g_bmpcache_lru[id] = idx;

 if (n_idx >= 0)
  g_bmpcache[id][n_idx].previous = idx;
 else
  g_bmpcache_mru[id] = idx;
}
