
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inputregs; int regwrite; int regread; int regs; } ;
typedef TYPE_1__ AeaStats ;


 int R_FREE (int ) ;

__attribute__((used)) static void aea_stats_fini (AeaStats *stats) {
 R_FREE (stats->regs);
 R_FREE (stats->regread);
 R_FREE (stats->regwrite);
 R_FREE (stats->inputregs);
}
