
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_layers; int layers; int graph; } ;
typedef TYPE_1__ RAGraph ;


 int layer_sweep (int ,int ,int,int,int) ;

__attribute__((used)) static void minimize_crossings(const RAGraph *g) {
 int i, cross_changed, max_changes = 4096;

 do {
  cross_changed = 0;
  max_changes--;

  for (i = 0; i < g->n_layers; ++i) {
   int rc = layer_sweep (g->graph, g->layers, g->n_layers, i, 1);
   if (rc == -1) {
    return;
   }
   cross_changed |= !!rc;
  }
 } while (cross_changed && max_changes);

 max_changes = 4096;

 do {
  cross_changed = 0;
  max_changes--;

  for (i = g->n_layers - 1; i >= 0; --i) {
   int rc = layer_sweep (g->graph, g->layers, g->n_layers, i, 0);
   if (rc == -1) {
    return;
   }
   cross_changed |= !!rc;
  }
 } while (cross_changed && max_changes);
}
