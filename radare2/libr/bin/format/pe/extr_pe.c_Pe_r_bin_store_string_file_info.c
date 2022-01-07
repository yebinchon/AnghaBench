
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfChildren; int * Children; } ;
typedef TYPE_1__ StringFileInfo ;
typedef int Sdb ;


 int Pe_r_bin_store_string_table (int ) ;
 int * sdb_new0 () ;
 int sdb_ns_set (int *,char*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static Sdb* Pe_r_bin_store_string_file_info(StringFileInfo* stringFileInfo) {
 char key[30];
 int i = 0;
 Sdb* sdb = ((void*)0);
 if (!stringFileInfo) {
  return ((void*)0);
 }
 sdb = sdb_new0 ();
 if (!sdb) {
  return ((void*)0);
 }
 for (; i < stringFileInfo->numOfChildren; i++) {
  snprintf (key, 30, "stringtable%d", i);
  sdb_ns_set (sdb, key, Pe_r_bin_store_string_table (stringFileInfo->Children[i]));
 }
 return sdb;
}
