
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ offset; TYPE_1__* print; } ;
struct TYPE_6__ {scalar_t__ cur; int ocur; } ;
typedef TYPE_1__ RPrint ;
typedef TYPE_2__ RCore ;


 int r_core_seek_delta (TYPE_2__*,int) ;
 int r_core_visual_prevopsz (TYPE_2__*,scalar_t__) ;

void __fix_cursor_up(RCore *core) {
 RPrint *print = core->print;
 if (print->cur >= 0) {
  return;
 }
 int sz = r_core_visual_prevopsz (core, core->offset + print->cur);
 if (sz < 1) {
  sz = 1;
 }
 r_core_seek_delta (core, -sz);
 print->cur += sz;
 if (print->ocur != -1) {
  print->ocur += sz;
 }
}
