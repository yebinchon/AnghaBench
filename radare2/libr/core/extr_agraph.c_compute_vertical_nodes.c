
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n_layers; int graph; TYPE_1__* layers; } ;
struct TYPE_7__ {scalar_t__ is_dummy; } ;
struct TYPE_6__ {int n_nodes; int ** nodes; } ;
typedef int Sdb ;
typedef int RList ;
typedef int RGraphNode ;
typedef TYPE_2__ RANode ;
typedef TYPE_3__ RAGraph ;


 TYPE_2__* get_anode (int *) ;
 int * hash_get_rlist (int *,int *) ;
 int hash_set (int *,int *,int *) ;
 int * r_graph_nth_neighbour (int ,int *,int ) ;
 int r_list_append (int *,int *) ;
 int * r_list_new () ;
 int * sdb_new0 () ;

__attribute__((used)) static Sdb *compute_vertical_nodes(const RAGraph *g) {
 Sdb *res = sdb_new0 ();
 int i, j;

 for (i = 0; i < g->n_layers; ++i) {
  for (j = 0; j < g->layers[i].n_nodes; ++j) {
   RGraphNode *gn = g->layers[i].nodes[j];
   const RList *Ln = hash_get_rlist (res, gn);
   const RANode *an = get_anode (gn);

   if (!Ln) {
    RList *vert = r_list_new ();
    hash_set (res, gn, vert);
    if (an->is_dummy) {
     RGraphNode *next = gn;
     const RANode *anext = get_anode (next);

     while (anext->is_dummy) {
      r_list_append (vert, next);
      next = r_graph_nth_neighbour (g->graph, next, 0);
      if (!next) {
       break;
      }
      anext = get_anode (next);
     }
    } else {
     r_list_append (vert, gn);
    }
   }
  }
 }

 return res;
}
