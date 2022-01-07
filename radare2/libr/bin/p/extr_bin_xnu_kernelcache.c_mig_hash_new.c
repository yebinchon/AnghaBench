
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HtPP ;


 int R_MIG_INDEX_LEN ;
 char** mig_index ;
 int sdb_ht_insert (int *,char const*,char const*) ;
 int * sdb_ht_new () ;

__attribute__((used)) static HtPP *mig_hash_new() {
 HtPP *hash = sdb_ht_new ();
 if (!hash) {
  return ((void*)0);
 }

 int i;
 for (i = 0; i < R_MIG_INDEX_LEN; i += 2) {
  const char *num = mig_index[i];
  const char *name = mig_index[i+1];
  sdb_ht_insert (hash, num, name);
 }

 return hash;
}
