
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfChildren; int * Children; scalar_t__ szKey; } ;
typedef TYPE_1__ StringTable ;
typedef int Sdb ;


 int EIGHT_HEX_DIG_UTF_16_LEN ;
 int Pe_r_bin_store_string (int ) ;
 int free (char*) ;
 char* sdb_encode (unsigned char*,int ) ;
 int sdb_free (int *) ;
 int * sdb_new0 () ;
 int sdb_ns_set (int *,char*,int ) ;
 int sdb_set (int *,char*,char*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static Sdb* Pe_r_bin_store_string_table(StringTable* stringTable) {
 char key[20];
 char* encodedKey = ((void*)0);
 int i = 0;
 Sdb* sdb = ((void*)0);
 if (!stringTable) {
  return ((void*)0);
 }
 sdb = sdb_new0 ();
 if (!sdb) {
  return ((void*)0);
 }
 encodedKey = sdb_encode ((unsigned char*) stringTable->szKey, EIGHT_HEX_DIG_UTF_16_LEN);
 if (!encodedKey) {
  sdb_free (sdb);
  return ((void*)0);
 }
 sdb_set (sdb, "key", encodedKey, 0);
 free (encodedKey);
 for (; i < stringTable->numOfChildren; i++) {
  snprintf (key, 20, "string%d", i);
  sdb_ns_set (sdb, key, Pe_r_bin_store_string (stringTable->Children[i]));
 }
 return sdb;
}
