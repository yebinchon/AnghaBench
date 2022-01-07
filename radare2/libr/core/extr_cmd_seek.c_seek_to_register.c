
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_10__ {int * reg; } ;
struct TYPE_9__ {scalar_t__ debug; } ;
struct TYPE_8__ {int print; int offset; TYPE_4__* io; TYPE_5__* dbg; TYPE_1__* anal; } ;
struct TYPE_7__ {int * reg; } ;
typedef int RReg ;
typedef TYPE_2__ RCore ;


 int r_core_seek (TYPE_2__*,int ,int) ;
 int r_debug_reg_get (TYPE_5__*,char const*) ;
 int r_io_sundo_push (TYPE_4__*,int ,int ) ;
 int r_print_get_cursor (int ) ;

__attribute__((used)) static void seek_to_register(RCore *core, const char *input, bool is_silent) {
 ut64 off;
 if (core->io->debug) {
  off = r_debug_reg_get (core->dbg, input);
  if (!is_silent) {
   r_io_sundo_push (core->io, core->offset, r_print_get_cursor (core->print));
  }
  r_core_seek (core, off, 1);
 } else {
  RReg *orig = core->dbg->reg;
  core->dbg->reg = core->anal->reg;
  off = r_debug_reg_get (core->dbg, input);
  core->dbg->reg = orig;
  if (!is_silent) {
   r_io_sundo_push (core->io, core->offset, r_print_get_cursor (core->print));
  }
  r_core_seek (core, off, 1);
 }
}
