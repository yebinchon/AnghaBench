
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int blocksize; int offset; int num; } ;
typedef TYPE_1__ RCore ;
typedef int PJ ;


 int pj_a (int *) ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int * pj_new () ;
 int pj_string (int *) ;
 int r_cons_printf (char*,int ) ;
 int r_core_print_disasm_json (TYPE_1__*,int ,int *,int ,int,int *) ;
 int r_num_math (int ,char const*) ;

__attribute__((used)) static void cmd_pdj(RCore *core, const char *arg, ut8* block) {
 int nblines = r_num_math (core->num, arg);
 PJ *pj = pj_new ();
 if (!pj) {
  return;
 }
 pj_a (pj);
 r_core_print_disasm_json (core, core->offset, block, core->blocksize, nblines, pj);
 pj_end (pj);
 r_cons_printf ("%s\n", pj_string (pj));
 pj_free (pj);
}
