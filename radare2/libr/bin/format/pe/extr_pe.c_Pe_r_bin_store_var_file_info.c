
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int numOfChildren; int * Children; } ;
typedef TYPE_1__ VarFileInfo ;
typedef int Sdb ;


 int Pe_r_bin_store_var (int ) ;
 int * sdb_new0 () ;
 int sdb_ns_set (int *,char*,int ) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static Sdb* Pe_r_bin_store_var_file_info(VarFileInfo* varFileInfo) {
 char key[20];
 unsigned int i = 0;
 if (!varFileInfo) {
  return ((void*)0);
 }
 Sdb* sdb = sdb_new0 ();
 if (!sdb) {
  return ((void*)0);
 }
 for (; i < varFileInfo->numOfChildren; i++) {
  snprintf (key, 20, "var%d", i);
  sdb_ns_set (sdb, key, Pe_r_bin_store_var (varFileInfo->Children[i]));
 }
 return sdb;
}
