
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int j; int anal; } ;
typedef TYPE_1__ ListJsonCtx ;


 int r_anal_class_json (int ,int ,char const*) ;

__attribute__((used)) static int r_anal_class_list_json_cb(void *user, const char *k, const char *v) {
 ListJsonCtx *ctx = user;
 r_anal_class_json (ctx->anal, ctx->j, k);
 return 1;
}
