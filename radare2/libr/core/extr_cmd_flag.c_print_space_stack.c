
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFlag ;
typedef int PJ ;


 int free (char*) ;
 int pj_end (int *) ;
 int pj_kb (int *,char*,int) ;
 int pj_ki (int *,char*,int) ;
 int pj_ks (int *,char*,char*) ;
 int pj_o (int *) ;
 int r_cons_printf (char const*,...) ;
 char* r_str_escape (char const*) ;

__attribute__((used)) static void print_space_stack(RFlag *f, int ordinal, const char *name, bool selected, PJ *pj, int mode) {
 bool first = ordinal == 0;
 switch (mode) {
 case 'j': {
  char *ename = r_str_escape (name);
  if (!ename) {
   return;
  }

  pj_o (pj);
  pj_ki (pj, "ordinal", ordinal);
  pj_ks (pj, "name", ename);
  pj_kb (pj, "selected", selected);
  pj_end (pj);
  free (ename);
  break;
 }
 case '*': {
  const char *fmt = first? "fs %s\n": "fs+%s\n";
  r_cons_printf (fmt, name);
  break;
 }
 default:
  r_cons_printf ("%-2d %s%s\n", ordinal, name, selected? " (selected)": "");
  break;
 }
}
