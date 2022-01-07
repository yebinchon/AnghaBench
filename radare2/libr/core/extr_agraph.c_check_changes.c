
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_24__ {int sx; int sy; void* color; } ;
struct TYPE_23__ {int need_reload_nodes; int force_update_seek; int need_update_dim; int need_set_layout; TYPE_2__* update_seek_on; TYPE_4__* can; scalar_t__ curnode; void* hints; int layout; int is_callgraph; int edgemode; int zoom; int graph; } ;
struct TYPE_22__ {int title; } ;
struct TYPE_21__ {scalar_t__ config; int offset; int anal; } ;
typedef TYPE_1__ RCore ;
typedef int RAnalFunction ;
typedef TYPE_2__ RANode ;
typedef TYPE_3__ RAGraph ;


 scalar_t__ UT64_MAX ;
 int agraph_reload_nodes (TYPE_3__*,TYPE_1__*,int *) ;
 int agraph_set_layout (TYPE_3__*) ;
 int agraph_update_title (TYPE_1__*,TYPE_3__*,int *) ;
 int fold_asm_trace (TYPE_1__*,TYPE_3__*) ;
 int free (char*) ;
 TYPE_2__* get_anode (scalar_t__) ;
 char* get_title (scalar_t__) ;
 int is_mini (TYPE_3__*) ;
 TYPE_2__* r_agraph_get_node (TYPE_3__*,char*) ;
 int r_agraph_set_curnode (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ r_anal_get_bbaddr (int ,int ) ;
 void* r_config_get_i (scalar_t__,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int update_node_dimension (int ,int ,int ,int ,int ,int ) ;
 int update_seek (TYPE_4__*,TYPE_2__*,int) ;

__attribute__((used)) static int check_changes(RAGraph *g, int is_interactive, RCore *core, RAnalFunction *fcn) {
 int oldpos[2] = {
  0, 0
 };
 if (g->need_reload_nodes && core) {
  if (!g->update_seek_on && !g->force_update_seek) {

   oldpos[0] = g->can->sx;
   oldpos[1] = g->can->sy;
  }
  if (!agraph_reload_nodes (g, core, fcn)) {
   return 0;
  }
 }
 if (fcn) {
  agraph_update_title (core, g, fcn);
 }
 if (core && core->config) {
  if (r_config_get_i (core->config, "graph.trace")) {

   fold_asm_trace (core, g);
  }
 }
 if (g->need_update_dim || g->need_reload_nodes || !is_interactive) {
  update_node_dimension (g->graph, is_mini (g), g->zoom, g->edgemode, g->is_callgraph, g->layout);
 }
 if (g->need_set_layout || g->need_reload_nodes || !is_interactive) {
  agraph_set_layout (g);
 }
 if (core) {
  ut64 off = r_anal_get_bbaddr (core->anal, core->offset);
  if (off == UT64_MAX) {
   return 0;
  }
  char *title = get_title (off);
  RANode *cur_anode = get_anode (g->curnode);
  if (fcn && ((is_interactive && !cur_anode) || (cur_anode && strcmp (cur_anode->title, title)))) {
   g->update_seek_on = r_agraph_get_node (g, title);
   if (g->update_seek_on) {
    r_agraph_set_curnode (g, g->update_seek_on);
    g->force_update_seek = 1;
   }
  }
  free (title);
  g->can->color = r_config_get_i (core->config, "scr.color");
  g->hints = r_config_get_i (core->config, "graph.hints");
 }
 if (g->update_seek_on || g->force_update_seek) {
  RANode *n = g->update_seek_on;
  if (!n && g->curnode) {
   n = get_anode (g->curnode);
  }
  if (n) {
   update_seek (g->can, n, g->force_update_seek);
  }
 }
 if (oldpos[0] || oldpos[1]) {
  g->can->sx = oldpos[0];
  g->can->sy = oldpos[1];
 }
 g->need_reload_nodes = 0;
 g->need_update_dim = 0;
 g->need_set_layout = 0;
 g->update_seek_on = ((void*)0);
 g->force_update_seek = 0;
 return 1;
}
