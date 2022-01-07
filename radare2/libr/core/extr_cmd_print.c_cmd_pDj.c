
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int offset; int io; int num; } ;
typedef TYPE_1__ RCore ;
typedef int PJ ;


 int eprintf (char*,int) ;
 int free (int *) ;
 int * malloc (int) ;
 int pj_a (int *) ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int * pj_new () ;
 int pj_string (int *) ;
 int r_cons_printf (char*,int ) ;
 int r_core_print_disasm_json (TYPE_1__*,int ,int *,int,int ,int *) ;
 int r_io_read_at (int ,int ,int *,int) ;
 int r_num_math (int ,char const*) ;

__attribute__((used)) static void cmd_pDj(RCore *core, const char *arg) {
 int bsize = r_num_math (core->num, arg);
 if (bsize < 0) {
  bsize = -bsize;
 }
 PJ *pj = pj_new ();
 if (!pj) {
  return;
 }
 pj_a (pj);
 ut8 *buf = malloc (bsize);
 if (buf) {
  r_io_read_at (core->io, core->offset, buf, bsize);
  r_core_print_disasm_json (core, core->offset, buf, bsize, 0, pj);
  free (buf);
 } else {
  eprintf ("cannot allocate %d byte(s)\n", bsize);
 }
 pj_end (pj);
 r_cons_printf ("%s", pj_string (pj));
 pj_free (pj);
}
