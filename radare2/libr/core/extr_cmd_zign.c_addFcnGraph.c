
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int bbs; } ;
struct TYPE_11__ {int anal; } ;
struct TYPE_10__ {int bbsum; int ebbs; int edges; int nbbs; int cc; } ;
typedef TYPE_1__ RSignGraph ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RAnalFunction ;


 int r_anal_fcn_cc (int ,TYPE_3__*) ;
 int r_anal_fcn_count_edges (TYPE_3__*,int *) ;
 int r_anal_fcn_size (TYPE_3__*) ;
 int r_list_length (int ) ;
 int r_sign_add_graph (int ,char const*,TYPE_1__) ;

__attribute__((used)) static bool addFcnGraph(RCore *core, RAnalFunction *fcn, const char *name) {
 RSignGraph graph = {
  .cc = r_anal_fcn_cc (core->anal, fcn),
  .nbbs = r_list_length (fcn->bbs)
 };

 graph.edges = r_anal_fcn_count_edges (fcn, &graph.ebbs);
 graph.bbsum = r_anal_fcn_size (fcn);
 return r_sign_add_graph (core->anal, name, graph);
}
