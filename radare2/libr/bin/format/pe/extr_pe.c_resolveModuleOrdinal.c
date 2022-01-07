
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int free (char*) ;
 int sdb_fmt (char*,int) ;
 char* sdb_get (int *,int ,int ) ;

__attribute__((used)) static char* resolveModuleOrdinal(Sdb* sdb, const char* module, int ordinal) {
 Sdb* db = sdb;
 char* foo = sdb_get (db, sdb_fmt ("%d", ordinal), 0);
 if (foo && *foo) {
  return foo;
 } else {
  free (foo);
 }
 return ((void*)0);
}
