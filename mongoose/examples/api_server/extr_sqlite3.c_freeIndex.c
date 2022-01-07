
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {struct TYPE_5__* zColAff; } ;
typedef TYPE_1__ Index ;


 int sqlite3DbFree (int *,TYPE_1__*) ;
 int sqlite3DeleteIndexSamples (int *,TYPE_1__*) ;

__attribute__((used)) static void freeIndex(sqlite3 *db, Index *p){

  sqlite3DeleteIndexSamples(db, p);

  sqlite3DbFree(db, p->zColAff);
  sqlite3DbFree(db, p);
}
