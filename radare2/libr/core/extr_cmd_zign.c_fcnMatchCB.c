
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ctxSearchCB {int count; int rad; int prefix; int core; } ;
struct TYPE_4__ {int addr; } ;
typedef int RSignItem ;
typedef TYPE_1__ RAnalFunction ;


 int addFlag (int ,int *,int ,int ,int ,int ,int ) ;
 int r_anal_fcn_realsize (TYPE_1__*) ;

__attribute__((used)) static int fcnMatchCB(RSignItem *it, RAnalFunction *fcn, void *user) {
 struct ctxSearchCB *ctx = (struct ctxSearchCB *) user;

 addFlag (ctx->core, it, fcn->addr, r_anal_fcn_realsize (fcn), ctx->count, ctx->prefix, ctx->rad);
 ctx->count++;
 return 1;
}
