
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int Sdb ;


 int free (char*) ;
 char* sdb_encode (void const*,int) ;
 int sdb_set (int *,char const*,char*,int ) ;

__attribute__((used)) static void sdb_set_enc(Sdb *db, const char *key, const char *v, ut32 cas) {
 char *estr = sdb_encode ((const void *) v, -1);
 sdb_set (db, key, estr, cas);
 free (estr);
}
