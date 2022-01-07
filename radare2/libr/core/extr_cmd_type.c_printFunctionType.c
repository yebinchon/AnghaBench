
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int * sdb_types; } ;
typedef int Sdb ;
typedef TYPE_2__ RCore ;
typedef int PJ ;


 int free (char*) ;
 int pj_a (int *) ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int pj_k (int *,char*) ;
 int pj_ks (int *,char*,char const*) ;
 int * pj_new () ;
 int pj_o (int *) ;
 int pj_string (int *) ;
 int r_cons_printf (char*,int ) ;
 char* r_str_trim_ro (char const*) ;
 char* sdb_const_get (int *,int ,int ) ;
 int sdb_fmt (char*,char const*,...) ;
 char* sdb_get (int *,int ,int ) ;
 int sdb_num_get (int *,int ,int ) ;
 char* sdb_querys (int *,int *,int,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void printFunctionType(RCore *core, const char *input) {
 Sdb *TDB = core->anal->sdb_types;
 PJ *pj = pj_new ();
 if (!pj) {
  return;
 }
 pj_o (pj);
 char *res = sdb_querys (TDB, ((void*)0), -1, sdb_fmt ("func.%s.args", input));
 const char *name = r_str_trim_ro (input);
 int i, args = sdb_num_get (TDB, sdb_fmt ("func.%s.args", name), 0);
 pj_ks (pj, "name", name);
 pj_ks (pj, "ret", sdb_const_get (TDB, sdb_fmt ("func.%s.ret", name), 0));
 pj_k (pj, "args");
 pj_a (pj);
 for (i = 0; i < args; i++) {
  char *type = sdb_get (TDB, sdb_fmt ("func.%s.arg.%d", name, i), 0);
  if (!type) {
   continue;
  }
  char *name = strchr (type, ',');
  if (name) {
   *name++ = 0;
  }
  pj_o (pj);
  pj_ks (pj, "type", type);
  if (name) {
   pj_ks (pj, "name", name);
  } else {
   pj_ks (pj, "name", "(null)");
  }
  pj_end (pj);
 }
 pj_end (pj);
 pj_end (pj);
 r_cons_printf ("%s", pj_string (pj));
 pj_free (pj);
 free (res);
}
