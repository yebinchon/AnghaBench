
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int sdb_types; } ;
typedef TYPE_2__ RCore ;
typedef int PJ ;


 int eprintf (char*,...) ;
 int free (char*) ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int pj_ks (int *,char*,char const*) ;
 int * pj_new () ;
 int pj_o (int *) ;
 char* pj_string (int *) ;
 int r_cons_printf (char*,char const*,...) ;
 int r_str_trim (char*) ;
 char* r_type_format (int ,char const*) ;
 char* sdb_const_get (int ,char const*,int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void showFormat(RCore *core, const char *name, int mode) {
 const char *isenum = sdb_const_get (core->anal->sdb_types, name, 0);
 if (isenum && !strcmp (isenum, "enum")) {
  eprintf ("IS ENUM\n");
 } else {
  char *fmt = r_type_format (core->anal->sdb_types, name);
  if (fmt) {
   r_str_trim (fmt);
   if (mode == 'j') {
    PJ *pj = pj_new ();
    if (!pj) {
     return;
    }
    pj_o (pj);
    pj_ks (pj, "name", name);
    pj_ks (pj, "format", fmt);
    pj_end (pj);
    r_cons_printf ("%s", pj_string (pj));
    pj_free (pj);
   } else {
    if (mode) {
     r_cons_printf ("pf.%s %s\n", name, fmt);
    } else {
     r_cons_printf ("pf %s\n", fmt);
    }
   }
   free (fmt);
  } else {
   eprintf ("Cannot find '%s' type\n", name);
  }
 }
}
