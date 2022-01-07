
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io; int (* system ) (int ,char*) ;} ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef TYPE_2__ RDebug ;


 int free (int ) ;
 int stub1 (int ,char*) ;

__attribute__((used)) static int __io_step_over(RDebug *dbg) {
 free (dbg->iob.system (dbg->iob.io, "dso"));
 return 1;
}
