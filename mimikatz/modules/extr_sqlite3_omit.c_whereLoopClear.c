
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_5__ {scalar_t__ aLTerm; scalar_t__ aLTermSpace; } ;
typedef TYPE_1__ WhereLoop ;


 int sqlite3DbFreeNN (int *,scalar_t__) ;
 int whereLoopClearUnion (int *,TYPE_1__*) ;
 int whereLoopInit (TYPE_1__*) ;

__attribute__((used)) static void whereLoopClear(sqlite3 *db, WhereLoop *p){
  if( p->aLTerm!=p->aLTermSpace ) sqlite3DbFreeNN(db, p->aLTerm);
  whereLoopClearUnion(db, p);
  whereLoopInit(p);
}
