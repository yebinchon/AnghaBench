
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int free (char*) ;
 char* sdb_get (int *,char const*,int ) ;
 int sdb_remove (int *,char const*,int ) ;
 int sdb_set (int *,char const*,char*,int ) ;

__attribute__((used)) static bool rename_key(Sdb *sdb, const char *key_old, const char *key_new) {
 char *content = sdb_get (sdb, key_old, 0);
 if (!content) {
  return 0;
 }
 sdb_remove (sdb, key_old, 0);
 sdb_set (sdb, key_new, content, 0);
 free (content);
 return 1;
}
