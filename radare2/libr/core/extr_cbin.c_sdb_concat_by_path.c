
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int sdb_close (int *) ;
 int sdb_free (int *) ;
 int sdb_merge (int *,int *) ;
 int * sdb_new (int ,char const*,int ) ;

__attribute__((used)) static void sdb_concat_by_path(Sdb *s, const char *path) {
 Sdb *db = sdb_new (0, path, 0);
 sdb_merge (s, db);
 sdb_close (db);
 sdb_free (db);
}
