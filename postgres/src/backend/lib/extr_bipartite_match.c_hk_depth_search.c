
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {short* distance; short* pair_uv; short* pair_vu; short** adjacency; } ;
typedef TYPE_1__ BipartiteMatchState ;


 short HK_INFINITY ;
 int check_stack_depth () ;

__attribute__((used)) static bool
hk_depth_search(BipartiteMatchState *state, int u)
{
 short *distance = state->distance;
 short *pair_uv = state->pair_uv;
 short *pair_vu = state->pair_vu;
 short *u_adj = state->adjacency[u];
 int i = u_adj ? u_adj[0] : 0;
 short nextdist;

 if (u == 0)
  return 1;
 if (distance[u] == HK_INFINITY)
  return 0;
 nextdist = distance[u] + 1;

 check_stack_depth();

 for (; i > 0; i--)
 {
  int v = u_adj[i];

  if (distance[pair_vu[v]] == nextdist)
  {
   if (hk_depth_search(state, pair_vu[v]))
   {
    pair_vu[v] = u;
    pair_uv[u] = v;
    return 1;
   }
  }
 }

 distance[u] = HK_INFINITY;
 return 0;
}
