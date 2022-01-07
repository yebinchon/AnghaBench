
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tid; int pid; } ;
typedef TYPE_1__ RDebug ;



__attribute__((used)) static int __esil_init(RDebug *dbg) {
 dbg->tid = dbg->pid = 1;


 return 1;
}
