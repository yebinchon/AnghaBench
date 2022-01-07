
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* inputregs; void* regwrite; void* regread; void* regs; } ;
typedef TYPE_1__ AeaStats ;


 int free ;
 void* r_list_newf (int ) ;

__attribute__((used)) static void aea_stats_init (AeaStats *stats) {
 stats->regs = r_list_newf (free);
 stats->regread = r_list_newf (free);
 stats->regwrite = r_list_newf (free);
 stats->inputregs = r_list_newf (free);
}
