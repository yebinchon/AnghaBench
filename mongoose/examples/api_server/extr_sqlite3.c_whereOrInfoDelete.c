
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int wc; } ;
typedef TYPE_1__ WhereOrInfo ;


 int sqlite3DbFree (int *,TYPE_1__*) ;
 int whereClauseClear (int *) ;

__attribute__((used)) static void whereOrInfoDelete(sqlite3 *db, WhereOrInfo *p){
  whereClauseClear(&p->wc);
  sqlite3DbFree(db, p);
}
