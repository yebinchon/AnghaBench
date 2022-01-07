
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int free (char*) ;
 int sdb_disk_insert (int *,char*,char*) ;
 int sdb_query (int *,char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strdup (char const*) ;

__attribute__((used)) static int insertkeys(Sdb *s, const char **args, int nargs, int mode) {
 int must_save = 0;
 if (args && nargs > 0) {
  int i;
  for (i = 0; i < nargs; i++) {
   switch (mode) {
   case '-':
    must_save |= sdb_query (s, args[i]);
    break;
   case '=':
    if (strchr (args[i], '=')) {
     char *v, *kv = (char *) strdup (args[i]);
     v = strchr (kv, '=');
     if (v) {
      *v++ = 0;
      sdb_disk_insert (s, kv, v);
     }
     free (kv);
    }
    break;
   }
  }
 }
 return must_save;
}
