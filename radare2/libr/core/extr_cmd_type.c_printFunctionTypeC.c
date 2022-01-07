
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


 int free (char*) ;
 int r_cons_printf (char*,...) ;
 char* r_str_trim_ro (char const*) ;
 char* sdb_const_get (int *,int ,int ) ;
 int sdb_fmt (char*,char const*,...) ;
 char* sdb_get (int *,int ,int ) ;
 int sdb_num_get (int *,int ,int ) ;
 char* sdb_querys (int *,int *,int,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void printFunctionTypeC(RCore *core, const char *input) {
 Sdb *TDB = core->anal->sdb_types;
 char *res = sdb_querys (TDB, ((void*)0), -1, sdb_fmt ("func.%s.args", input));
 const char *name = r_str_trim_ro (input);
 int i, args = sdb_num_get (TDB, sdb_fmt ("func.%s.args", name), 0);
 const char *ret = sdb_const_get (TDB, sdb_fmt ("func.%s.ret", name), 0);
 if (!ret || !name) {

  return;
 }

 r_cons_printf ("%s %s (", ret, name);
 for (i = 0; i < args; i++) {
  char *type = sdb_get (TDB, sdb_fmt ("func.%s.arg.%d", name, i), 0);
  char *name = strchr (type, ',');
  if (name) {
   *name++ = 0;
  }
  r_cons_printf ("%s%s %s", i==0? "": ", ", type, name);
 }
 r_cons_printf (");\n");
 free (res);
}
