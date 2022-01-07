
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dist_t {int dist; int const* to; int const* from; } ;
struct TYPE_8__ {scalar_t__ dists; TYPE_1__* layers; } ;
struct TYPE_7__ {size_t layer; int pos_in_layer; int w; scalar_t__ is_reversed; } ;
struct TYPE_6__ {int ** nodes; } ;
typedef int RListIter ;
typedef int RListComparator ;
typedef int RGraphNode ;
typedef TYPE_2__ RANode ;
typedef TYPE_3__ RAGraph ;


 int HORIZONTAL_NODE_SPACING ;
 scalar_t__ find_dist ;
 TYPE_2__* get_anode (int const*) ;
 int * r_list_find (scalar_t__,struct dist_t*,int ) ;
 scalar_t__ r_list_iter_get_data (int *) ;

__attribute__((used)) static int dist_nodes(const RAGraph *g, const RGraphNode *a, const RGraphNode *b) {
 struct dist_t d;
 const RANode *aa, *ab;
 RListIter *it;
 int res = 0;

 if (g->dists) {
  d.from = a;
  d.to = b;
  it = r_list_find (g->dists, &d, (RListComparator) find_dist);
  if (it) {
   struct dist_t *old = (struct dist_t *) r_list_iter_get_data (it);
   return old->dist;
  }
 }

 aa = get_anode (a);
 ab = get_anode (b);
 if (aa && ab && aa->layer == ab->layer) {
  int i;

  res = aa == ab && !aa->is_reversed? HORIZONTAL_NODE_SPACING: 0;
  for (i = aa->pos_in_layer; i < ab->pos_in_layer; ++i) {
   const RGraphNode *cur = g->layers[aa->layer].nodes[i];
   const RGraphNode *next = g->layers[aa->layer].nodes[i + 1];
   const RANode *anext = get_anode (next);
   const RANode *acur = get_anode (cur);
   int found = 0;

   if (g->dists) {
    d.from = cur;
    d.to = next;
    it = r_list_find (g->dists, &d, (RListComparator) find_dist);
    if (it) {
     struct dist_t *old = (struct dist_t *) r_list_iter_get_data (it);
     res += old->dist;
     found = 1;
    }
   }

   if (acur && anext && !found) {
    int space = HORIZONTAL_NODE_SPACING;
    if (acur->is_reversed && anext->is_reversed) {
     if (!acur->is_reversed) {
      res += acur->w / 2;
     } else if (!anext->is_reversed) {
      res += anext->w / 2;
     }
     res += 1;
    } else {
     res += acur->w / 2 + anext->w / 2 + space;
    }
   }
  }
 }

 return res;
}
