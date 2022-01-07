
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* graph; } ;
struct TYPE_5__ {scalar_t__ cc; scalar_t__ nbbs; scalar_t__ ebbs; scalar_t__ edges; scalar_t__ bbsum; } ;
typedef TYPE_2__ RSignItem ;



__attribute__((used)) static bool matchGraph(RSignItem *a, RSignItem *b) {
 if (a->graph && b->graph) {
  if (a->graph->cc != b->graph->cc) {
   return 0;
  }
  if (a->graph->nbbs != b->graph->nbbs) {
   return 0;
  }
  if (a->graph->ebbs != b->graph->ebbs) {
   return 0;
  }
  if (a->graph->edges != b->graph->edges) {
   return 0;
  }
  if (a->graph->bbsum!= b->graph->bbsum) {
   return 0;
  }
  return 1;
 }
 return 0;
}
