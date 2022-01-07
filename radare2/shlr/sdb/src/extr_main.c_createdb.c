
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*) ;
 int free (char*) ;
 int insertkeys (int ,char const**,int,char) ;
 int options ;
 int s ;
 int sdb_config (int ,int ) ;
 int sdb_disk_create (int ) ;
 int sdb_disk_finish (int ) ;
 int sdb_disk_insert (int ,char*,char*) ;
 int sdb_new (int *,char const*,int ) ;
 char* stdin_slurp (int *) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int createdb(const char *f, const char **args, int nargs) {
 char *line, *eq;
 s = sdb_new (((void*)0), f, 0);
 if (!s || !sdb_disk_create (s)) {
  eprintf ("Cannot create database\n");
  return 1;
 }
 insertkeys (s, args, nargs, '=');
 sdb_config (s, options);
 for (; (line = stdin_slurp (((void*)0)));) {
  if ((eq = strchr (line, '='))) {
   *eq++ = 0;
   sdb_disk_insert (s, line, eq);
  }
  free (line);
 }
 sdb_disk_finish (s);
 return 0;
}
