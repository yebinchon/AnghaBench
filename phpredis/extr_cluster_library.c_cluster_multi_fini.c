
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int c; } ;
struct TYPE_8__ {scalar_t__ len; } ;
struct TYPE_7__ {TYPE_1__ args; TYPE_3__ cmd; int kw_len; int kw; int argc; } ;
typedef TYPE_2__ clusterMultiCmd ;


 int redis_cmd_init_sstr (TYPE_3__*,int ,int ,int ) ;
 int smart_string_appendl (TYPE_3__*,int ,int ) ;

void cluster_multi_fini(clusterMultiCmd *mc) {
    mc->cmd.len = 0;
    redis_cmd_init_sstr(&(mc->cmd), mc->argc, mc->kw, mc->kw_len);
    smart_string_appendl(&(mc->cmd), mc->args.c, mc->args.len);
}
