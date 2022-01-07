
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int eprintf (char*) ;
 int free (char*) ;
 int r_cons_println (char*) ;
 char* sdb_querys (int *,int *,int ,char const*) ;

__attribute__((used)) static void cmd_sdbk(Sdb *db, const char *input) {
 char *out = (input[0] == ' ')
  ? sdb_querys (db, ((void*)0), 0, input + 1)
  : sdb_querys (db, ((void*)0), 0, "*");
 if (out) {
  r_cons_println (out);
  free (out);
 } else {
  eprintf ("|ERROR| Usage: ask [query]\n");
 }
}
