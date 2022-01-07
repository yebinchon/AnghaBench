
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TDB_ ;
 int r_return_val_if_fail (int ,int) ;
 scalar_t__ r_str_startswith (char const*,char*) ;
 char* sdb_const_get (int ,char const*,int *) ;
 char* sdb_fmt (char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int stdifstruct(void *user, const char *k, const char *v) {
 r_return_val_if_fail (TDB_, 0);
 if (!strcmp (v, "struct")) {
  return 1;
 }
 if (!strcmp (v, "typedef")) {
  const char *typedef_key = sdb_fmt ("typedef.%s", k);
  const char *type = sdb_const_get (TDB_, typedef_key, ((void*)0));
  if (type && r_str_startswith (type, "struct ")) {
   return 1;
  }
 }
 return 0;
}
