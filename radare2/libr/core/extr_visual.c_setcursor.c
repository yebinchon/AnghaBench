
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int cur_enabled; int cur; int col; } ;
struct TYPE_4__ {TYPE_3__* print; } ;
typedef TYPE_1__ RCore ;


 int R_PRINT_FLAGS_CURSOR ;
 int r_print_set_flags (TYPE_3__*,int) ;

__attribute__((used)) static void setcursor(RCore *core, bool cur) {
 int flags = core->print->flags;
 if (core->print->cur_enabled) {
  flags |= R_PRINT_FLAGS_CURSOR;
 } else {
  flags &= ~(R_PRINT_FLAGS_CURSOR);
 }
 core->print->cur_enabled = cur;
 if (core->print->cur == -1) {
  core->print->cur = 0;
 }
 r_print_set_flags (core->print, flags);
 core->print->col = core->print->cur_enabled? 1: 0;
}
