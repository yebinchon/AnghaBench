
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* member_1; char const* member_2; int member_3; int member_0; } ;
struct TYPE_5__ {int cb_user; int (* cb ) (TYPE_2__*,int ) ;int path; } ;
typedef TYPE_1__ SdbDiffCtx ;
typedef TYPE_2__ SdbDiff ;


 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void sdb_diff_report_kv(SdbDiffCtx *ctx, const char *k, const char *v, bool add) {
 SdbDiff diff = { ctx->path, k, v, add };
 ctx->cb (&diff, ctx->cb_user);
}
