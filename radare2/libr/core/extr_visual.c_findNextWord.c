
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int blocksize; int* block; int offset; TYPE_1__* print; } ;
struct TYPE_6__ {int cur; int ocur; scalar_t__ cur_enabled; } ;
typedef TYPE_2__ RCore ;


 int r_core_seek (TYPE_2__*,int ,int) ;
 int r_core_visual_showcursor (TYPE_2__*,int) ;

__attribute__((used)) static void findNextWord(RCore *core) {
 int i, d = core->print->cur_enabled? core->print->cur: 0;
 for (i = d + 1; i < core->blocksize; i++) {
  switch (core->block[i]) {
  case ' ':
  case '.':
  case '\t':
  case '\n':
   if (core->print->cur_enabled) {
    core->print->cur = i + 1;
    core->print->ocur = -1;
    r_core_visual_showcursor (core, 1);
   } else {
    r_core_seek (core, core->offset + i + 1, 1);
   }
   return;
  }
 }
}
