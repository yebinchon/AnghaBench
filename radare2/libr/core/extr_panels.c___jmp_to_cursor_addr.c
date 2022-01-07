
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_11__ {scalar_t__ offset; } ;
struct TYPE_10__ {TYPE_1__* view; } ;
struct TYPE_9__ {int curpos; } ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;


 scalar_t__ UT64_MAX ;
 scalar_t__ __parse_string_on_cursor (TYPE_3__*,TYPE_2__*,int ) ;
 int __update_disassembly_or_open (TYPE_3__*) ;

void __jmp_to_cursor_addr(RCore *core, RPanel *panel) {
 ut64 addr = __parse_string_on_cursor (core, panel, panel->view->curpos);
 if (addr == UT64_MAX) {
  return;
 }
 core->offset = addr;
 __update_disassembly_or_open (core);
}
