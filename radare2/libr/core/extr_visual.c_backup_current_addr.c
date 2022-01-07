
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_7__ {TYPE_1__* print; scalar_t__ offset; scalar_t__ blocksize; } ;
struct TYPE_6__ {int ocur; int cur; scalar_t__ cur_enabled; } ;
typedef TYPE_2__ RCore ;


 int r_core_block_size (TYPE_2__*,int) ;
 int r_core_seek (TYPE_2__*,scalar_t__,int) ;

__attribute__((used)) static void backup_current_addr(RCore *core, ut64 *addr, ut64 *bsze, ut64 *newaddr) {
 *addr = core->offset;
 *bsze = core->blocksize;
 if (core->print->cur_enabled) {
  if (core->print->ocur != -1) {
   int newsz = core->print->cur - core->print->ocur;
   *newaddr = core->offset + core->print->ocur;
   r_core_block_size (core, newsz);
  } else {
   *newaddr = core->offset + core->print->cur;
  }
  r_core_seek (core, *newaddr, 1);
 }
}
