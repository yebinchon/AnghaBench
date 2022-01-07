
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int WhereLoop ;


 int sqlite3DbFreeNN (int *,int *) ;
 int whereLoopClear (int *,int *) ;

__attribute__((used)) static void whereLoopDelete(sqlite3 *db, WhereLoop *p){
  whereLoopClear(db, p);
  sqlite3DbFreeNN(db, p);
}
