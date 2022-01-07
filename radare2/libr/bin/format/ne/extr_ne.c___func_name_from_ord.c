
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
typedef char Sdb ;


 int R2_SDB_FORMAT ;
 int R_JOIN_4_PATHS (char*,int ,char*,char*) ;
 int free (char*) ;
 scalar_t__ r_file_exists (char*) ;
 char* r_str_newf (char*,int ,...) ;
 int r_sys_prefix (int *) ;
 int sdb_close (char*) ;
 char* sdb_get (char*,char*,int *) ;
 char* sdb_new (int *,char*,int ) ;

__attribute__((used)) static char *__func_name_from_ord(char *module, ut16 ordinal) {
 char *path = r_str_newf (R_JOIN_4_PATHS ("%s", R2_SDB_FORMAT, "dll", "%s.sdb"), r_sys_prefix (((void*)0)), module);
 char *ord = r_str_newf ("%d", ordinal);
 char *name;
 if (r_file_exists (path)) {
  Sdb *sdb = sdb_new (((void*)0), path, 0);
  name = sdb_get (sdb, ord, ((void*)0));
  if (!name) {
   name = ord;
  } else {
   free (ord);
  }
  sdb_close (sdb);
  free (sdb);
 } else {
  name = ord;
 }
 return name;
}
