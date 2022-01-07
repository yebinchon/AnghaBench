
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int anal; int offset; } ;
struct TYPE_6__ {int mainCol; TYPE_5__* core; int addr; int fcn; } ;
typedef TYPE_1__ RCoreVisualViewGraph ;


 int __fcns (TYPE_5__*) ;
 int __seek_cursor (TYPE_1__*) ;
 int __sort (TYPE_1__*,int ) ;
 int r_anal_get_fcn_at (int ,int ,int ) ;

__attribute__((used)) static void __reset_status(RCoreVisualViewGraph *status) {
 status->addr = status->core->offset;
 status->fcn = r_anal_get_fcn_at (status->core->anal, status->addr, 0);

 status->mainCol = __fcns (status->core);
 __sort (status, status->mainCol);
 __seek_cursor (status);

 return;
}
