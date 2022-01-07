
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Btree ;


 int sqlite3BtreePager (int *) ;
 int * sqlite3DbNameToBtree (int *,char const*) ;
 int sqlite3PagerIsreadonly (int ) ;

int sqlite3_db_readonly(sqlite3 *db, const char *zDbName){
  Btree *pBt = sqlite3DbNameToBtree(db, zDbName);
  return pBt ? sqlite3PagerIsreadonly(sqlite3BtreePager(pBt)) : -1;
}
