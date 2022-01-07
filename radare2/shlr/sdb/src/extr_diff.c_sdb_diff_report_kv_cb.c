
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int add; int ctx; } ;
typedef TYPE_1__ SdbDiffKVCbCtx ;


 int sdb_diff_report_kv (int ,char const*,char const*,int ) ;

__attribute__((used)) static int sdb_diff_report_kv_cb(void *user, const char *k, const char *v) {
 const SdbDiffKVCbCtx *ctx = user;
 sdb_diff_report_kv (ctx->ctx, k, v, ctx->add);
 return 1;
}
