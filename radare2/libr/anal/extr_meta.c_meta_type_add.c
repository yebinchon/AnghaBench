
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;
typedef int key ;
typedef int RAnal ;


 int DB ;
 int K ;
 int sdb_array_add_num (int ,char*,int ,int ) ;
 scalar_t__ sdb_num_inc (int ,char*,int,int ) ;
 int snprintf (char*,int,char*,char,...) ;

__attribute__((used)) static int meta_type_add(RAnal *a, char type, ut64 addr) {
 char key[32];
 ut32 count, last;
 snprintf (key, sizeof (key)-1, "meta.%c.count", type);
 count = (ut32)sdb_num_inc (DB, key, 1, 0);
 last = count/K;

 snprintf (key, sizeof (key)-1, "meta.%c.%d", type, last);
 sdb_array_add_num (DB, key, addr, 0);
 return count;
}
