
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int numOfValues; int * Value; } ;
typedef TYPE_1__ Var ;
typedef int Sdb ;


 int * sdb_new0 () ;
 int sdb_num_set (int *,char*,int ,int ) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static Sdb* Pe_r_bin_store_var(Var* var) {
 unsigned int i = 0;
 char key[20];
 Sdb* sdb = ((void*)0);
 if (var) {
  sdb = sdb_new0 ();
  if (sdb) {
   for (; i < var->numOfValues; i++) {
    snprintf (key, 20, "%d", i);
    sdb_num_set (sdb, key, var->Value[i], 0);
   }
  }
 }
 return sdb;
}
