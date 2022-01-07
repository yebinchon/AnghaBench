
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fcns; } ;
struct TYPE_7__ {TYPE_3__* anal; int flags; } ;
typedef TYPE_1__ RCore ;
typedef int PJ ;


 int compute_calls (TYPE_1__*) ;
 int compute_code (TYPE_1__*) ;
 int compute_coverage (TYPE_1__*) ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int pj_ki (int *,char*,int) ;
 int * pj_new () ;
 int pj_o (int *) ;
 int pj_string (int *) ;
 int r_anal_xrefs_count (TYPE_3__*) ;
 int r_cons_printf (char*,int) ;
 int r_cons_println (int ) ;
 int r_flag_count (int ,char*) ;
 int r_list_length (int ) ;

__attribute__((used)) static void r_core_anal_info (RCore *core, const char *input) {
 int fcns = r_list_length (core->anal->fcns);
 int strs = r_flag_count (core->flags, "str.*");
 int syms = r_flag_count (core->flags, "sym.*");
 int imps = r_flag_count (core->flags, "sym.imp.*");
 int code = compute_code (core);
 int covr = compute_coverage (core);
 int call = compute_calls (core);
 int xrfs = r_anal_xrefs_count (core->anal);
 int cvpc = (code > 0)? (covr * 100 / code): 0;
 if (*input == 'j') {
  PJ *pj = pj_new ();
  if (!pj) {
   return;
  }
  pj_o (pj);
  pj_ki (pj, "fcns", fcns);
  pj_ki (pj, "xrefs", xrfs);
  pj_ki (pj, "calls", call);
  pj_ki (pj, "strings", strs);
  pj_ki (pj, "symbols", syms);
  pj_ki (pj, "imports", imps);
  pj_ki (pj, "covrage", covr);
  pj_ki (pj, "codesz", code);
  pj_ki (pj, "percent", cvpc);
  pj_end (pj);
  r_cons_println (pj_string (pj));
  pj_free (pj);
 } else {
  r_cons_printf ("fcns    %d\n", fcns);
  r_cons_printf ("xrefs   %d\n", xrfs);
  r_cons_printf ("calls   %d\n", call);
  r_cons_printf ("strings %d\n", strs);
  r_cons_printf ("symbols %d\n", syms);
  r_cons_printf ("imports %d\n", imps);
  r_cons_printf ("covrage %d\n", covr);
  r_cons_printf ("codesz  %d\n", code);
  r_cons_printf ("percent %d%%\n", cvpc);
 }
}
