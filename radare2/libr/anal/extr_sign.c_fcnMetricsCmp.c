
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int bbs; } ;
struct TYPE_10__ {int cc; int nbbs; int edges; int ebbs; scalar_t__ bbsum; } ;
struct TYPE_9__ {TYPE_2__* graph; } ;
typedef TYPE_1__ RSignItem ;
typedef TYPE_2__ RSignGraph ;
typedef TYPE_3__ RAnalFunction ;


 scalar_t__ matchCount (scalar_t__,int ) ;
 int r_anal_fcn_cc (int *,TYPE_3__*) ;
 int r_anal_fcn_count_edges (TYPE_3__*,int*) ;
 int r_anal_fcn_size (TYPE_3__*) ;
 int r_list_length (int ) ;

__attribute__((used)) static bool fcnMetricsCmp(RSignItem *it, RAnalFunction *fcn) {
 RSignGraph *graph = it->graph;
 int ebbs = -1;

 if (graph->cc != -1 && graph->cc != r_anal_fcn_cc (((void*)0), fcn)) {
  return 0;
 }
 if (graph->nbbs != -1 && graph->nbbs != r_list_length (fcn->bbs)) {
  return 0;
 }
 if (graph->edges != -1 && graph->edges != r_anal_fcn_count_edges (fcn, &ebbs)) {
  return 0;
 }
 if (graph->ebbs != -1 && graph->ebbs != ebbs) {
  return 0;
 }
 if (graph->bbsum > 0 && matchCount (graph->bbsum, r_anal_fcn_size (fcn))) {
  return 0;
 }
 return 1;
}
