
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* print; int * block; } ;
struct TYPE_5__ {int cur; int ocur; scalar_t__ cur_enabled; } ;
typedef TYPE_2__ RCore ;


 scalar_t__ isSpace (int ) ;
 int r_core_visual_showcursor (TYPE_2__*,int) ;

__attribute__((used)) static void findPrevWord(RCore *core) {
 int i = core->print->cur_enabled? core->print->cur: 0;
 while (i > 1) {
  if (isSpace (core->block[i])) {
   i--;
  } else if (isSpace (core->block[i - 1])) {
   i -= 2;
  } else {
   break;
  }
 }
 for (; i >= 0; i--) {
  if (isSpace (core->block[i])) {
   if (core->print->cur_enabled) {
    core->print->cur = i + 1;
    core->print->ocur = -1;
    r_core_visual_showcursor (core, 1);
   } else {

   }
   break;
  }
 }
}
