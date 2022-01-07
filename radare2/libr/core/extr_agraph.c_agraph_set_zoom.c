
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int is_tiny; int zoom; int need_update_dim; int need_set_layout; TYPE_1__* can; int mode; } ;
struct TYPE_4__ {int sy; } ;
typedef TYPE_2__ RAGraph ;


 int R_AGRAPH_MODE_MINI ;
 int R_AGRAPH_MODE_NORMAL ;
 int R_AGRAPH_MODE_TINY ;

__attribute__((used)) static void agraph_set_zoom(RAGraph *g, int v) {
 if (v >= -10) {
  g->is_tiny = 0;
  if (v == 0) {
   g->mode = R_AGRAPH_MODE_MINI;
  } else if (v < 0) {
   g->mode = R_AGRAPH_MODE_TINY;
   g->is_tiny = 1;
  } else {
   g->mode = R_AGRAPH_MODE_NORMAL;
  }
  const int K = 920;
  if (g->zoom < v) {
   g->can->sy = (g->can->sy * K) / 1000;
  }
  else {
   g->can->sy = (g->can->sy * 1000) / K;
  }
  g->zoom = v;
  g->need_update_dim = 1;
  g->need_set_layout = 1;
 }
}
