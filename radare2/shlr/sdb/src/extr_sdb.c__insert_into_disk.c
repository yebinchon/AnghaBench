
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int sdb_disk_insert (int *,char const*,char const*) ;

__attribute__((used)) static int _insert_into_disk(void *user, const char *key, const char *value) {
 Sdb *s = (Sdb *)user;
 if (s) {
  sdb_disk_insert (s, key, value);
  return 1;
 }
 return 0;
}
