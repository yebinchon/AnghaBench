
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wValueLength; scalar_t__ Value; int wKeyLen; scalar_t__ szKey; } ;
typedef TYPE_1__ String ;
typedef int Sdb ;


 int free (char*) ;
 char* sdb_encode (unsigned char*,int ) ;
 int sdb_free (int *) ;
 int * sdb_new0 () ;
 int sdb_set (int *,char*,char*,int ) ;

__attribute__((used)) static Sdb* Pe_r_bin_store_string(String* string) {
 Sdb* sdb = ((void*)0);
 char* encodedVal = ((void*)0), * encodedKey = ((void*)0);
 if (!string) {
  return ((void*)0);
 }
 sdb = sdb_new0 ();
 if (!sdb) {
  return ((void*)0);
 }
 encodedKey = sdb_encode ((unsigned char*) string->szKey, string->wKeyLen);
 if (!encodedKey) {
  sdb_free (sdb);
  return ((void*)0);
 }
 encodedVal = sdb_encode ((unsigned char*) string->Value, string->wValueLength);
 if (!encodedVal) {
  free (encodedKey);
  sdb_free (sdb);
  return ((void*)0);
 }
 sdb_set (sdb, "key", encodedKey, 0);
 sdb_set (sdb, "value", encodedVal, 0);
 free (encodedKey);
 free (encodedVal);
 return sdb;
}
