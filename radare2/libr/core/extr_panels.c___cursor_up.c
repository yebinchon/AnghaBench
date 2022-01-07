
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {int offset; TYPE_1__* print; } ;
struct TYPE_6__ {int cur; } ;
typedef TYPE_1__ RPrint ;
typedef TYPE_2__ RCore ;


 int __fix_cursor_up (TYPE_2__*) ;
 scalar_t__ r_core_prevop_addr (TYPE_2__*,int,int,int*) ;

void __cursor_up(RCore *core) {
 RPrint *print = core->print;
 ut64 addr, oaddr = core->offset + print->cur;
 if (r_core_prevop_addr (core, oaddr, 1, &addr)) {
  const int delta = oaddr - addr;
  print->cur -= delta;
 } else {
  print->cur -= 4;
 }
 __fix_cursor_up (core);
}
