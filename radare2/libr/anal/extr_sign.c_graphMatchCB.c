
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ctxFcnMatchCB {scalar_t__ mincc; int (* cb ) (TYPE_1__*,int ,int ) ;int user; int fcn; } ;
struct TYPE_7__ {scalar_t__ cc; } ;
struct TYPE_6__ {TYPE_2__* graph; } ;
typedef TYPE_1__ RSignItem ;
typedef TYPE_2__ RSignGraph ;


 int fcnMetricsCmp (TYPE_1__*,int ) ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int graphMatchCB(RSignItem *it, void *user) {
 struct ctxFcnMatchCB *ctx = (struct ctxFcnMatchCB *) user;
 RSignGraph *graph = it->graph;

 if (!graph) {
  return 1;
 }

 if (graph->cc < ctx->mincc) {
  return 1;
 }

 if (!fcnMetricsCmp (it, ctx->fcn)) {
  return 1;
 }

 if (ctx->cb) {
  return ctx->cb (it, ctx->fcn, ctx->user);
 }

 return 1;
}
