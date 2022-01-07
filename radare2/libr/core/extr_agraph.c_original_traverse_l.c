
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int n_layers; TYPE_1__* layers; } ;
struct TYPE_12__ {int pos_in_layer; size_t layer; scalar_t__ is_dummy; } ;
struct TYPE_11__ {int n_nodes; int ** nodes; } ;
typedef int Sdb ;
typedef int RGraphNode ;
typedef TYPE_2__ RANode ;
typedef TYPE_3__ RAGraph ;


 int adjust_directions (TYPE_3__ const*,int,int,int *,int *) ;
 TYPE_2__* get_anode (int const*) ;
 int * get_right_dummy (TYPE_3__ const*,int const*) ;
 int hash_get_int (int *,int const*) ;
 int hash_set (int *,int const*,int) ;
 scalar_t__ is_valid_pos (TYPE_3__ const*,int,int) ;
 int place_sequence (TYPE_3__ const*,int,int const*,int const*,int,int,int) ;
 int set_dist_nodes (TYPE_3__ const*,int,int,int) ;

__attribute__((used)) static void original_traverse_l(const RAGraph *g, Sdb *D, Sdb *P, int from_up) {
 int i, k, va, vr;

 for (i = from_up? 0: g->n_layers - 1;
   (from_up && i < g->n_layers) || (!from_up && i >= 0);
   i = from_up? i + 1: i - 1) {
  int j;
  const RGraphNode *bm = ((void*)0);
  const RANode *bma = ((void*)0);

  j = 0;
  while (j < g->layers[i].n_nodes && !bm) {
   const RGraphNode *gn = g->layers[i].nodes[j];
   const RANode *an = get_anode (gn);
   if (an && an->is_dummy) {
    va = 0;
    vr = j;
    bm = gn;
    bma = an;
   }
   j++;
  }
  if (!bm) {
   va = 0;
   vr = g->layers[i].n_nodes;
  }
  place_sequence (g, i, ((void*)0), bm, from_up, va, vr);
  for (k = va; k < vr - 1; k++) {
   set_dist_nodes (g, i, k, k + 1);
  }
  if (is_valid_pos (g, i, vr - 1) && bm) {
   set_dist_nodes (g, i, vr - 1, bma->pos_in_layer);
  }
  while (bm) {
   const RGraphNode *bp = get_right_dummy (g, bm);
   const RANode *bpa = ((void*)0);
   bma = get_anode (bm);

   if (!bp) {
    va = bma->pos_in_layer + 1;
    vr = g->layers[bma->layer].n_nodes;
    place_sequence (g, i, bm, ((void*)0), from_up, va, vr);
    for (k = va; k < vr - 1; ++k) {
     set_dist_nodes (g, i, k, k + 1);
    }

    if (is_valid_pos (g, i, va)) {
     set_dist_nodes (g, i, bma->pos_in_layer, va);
    }
   } else if (hash_get_int (D, bm) == from_up) {
    bpa = get_anode (bp);
    va = bma->pos_in_layer + 1;
    vr = bpa->pos_in_layer;
    place_sequence (g, i, bm, bp, from_up, va, vr);
    hash_set (P, bm, 1);
   }
   bm = bp;
  }
  adjust_directions (g, i, from_up, D, P);
 }
}
