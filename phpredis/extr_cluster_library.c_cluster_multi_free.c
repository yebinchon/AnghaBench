
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int c; } ;
struct TYPE_5__ {int c; } ;
struct TYPE_7__ {TYPE_2__ args; TYPE_1__ cmd; } ;
typedef TYPE_3__ clusterMultiCmd ;


 int efree (int ) ;

void cluster_multi_free(clusterMultiCmd *mc) {
    efree(mc->cmd.c);
    efree(mc->args.c);
}
