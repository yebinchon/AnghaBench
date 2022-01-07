
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct ctxSearchCB {int count; int rad; int prefix; int core; } ;
struct TYPE_3__ {int count; int keyword_length; } ;
typedef int RSignItem ;
typedef TYPE_1__ RSearchKeyword ;


 int addFlag (int ,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int searchHitCB(RSignItem *it, RSearchKeyword *kw, ut64 addr, void *user) {
 struct ctxSearchCB *ctx = (struct ctxSearchCB *) user;
 addFlag (ctx->core, it, addr, kw->keyword_length, kw->count, ctx->prefix, ctx->rad);
 ctx->count++;
 return 1;
}
