
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int stackFd; int _tabsbuf; int sl; int osl; int opstr; int prev_line_col; int refline2; int refline; int line_col; int line; int comment; int ssa; int hint; int analop; int asmop; TYPE_1__* core; scalar_t__ show_emu_stack; } ;
struct TYPE_7__ {int io; } ;
typedef TYPE_2__ RDisasmState ;


 int R_FREE (TYPE_2__*) ;
 int ds_print_esil_anal_fini (TYPE_2__*) ;
 int ds_reflines_fini (TYPE_2__*) ;
 int eprintf (char*) ;
 int free (int ) ;
 int r_anal_hint_free (int ) ;
 int r_anal_op_fini (int *) ;
 int r_asm_op_fini (int *) ;
 int r_io_fd_close (int ,int) ;
 int sdb_free (int ) ;

__attribute__((used)) static void ds_free(RDisasmState *ds) {
 if (!ds) {
  return;
 }
 if (ds->show_emu_stack) {

  eprintf ("Free fake stack\n");
  if (ds->stackFd != -1) {
   r_io_fd_close (ds->core->io, ds->stackFd);
  }
 }
 r_asm_op_fini (&ds->asmop);
 r_anal_op_fini (&ds->analop);
 r_anal_hint_free (ds->hint);
 ds_print_esil_anal_fini (ds);
 ds_reflines_fini (ds);
 ds_print_esil_anal_fini (ds);
 sdb_free (ds->ssa);
 free (ds->comment);
 free (ds->line);
 free (ds->line_col);
 free (ds->refline);
 free (ds->refline2);
 free (ds->prev_line_col);
 free (ds->opstr);
 free (ds->osl);
 free (ds->sl);
 free (ds->_tabsbuf);
 R_FREE (ds);
}
