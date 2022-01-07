
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_14__ {struct TYPE_14__* pNextLoop; } ;
typedef TYPE_4__ WhereLoop ;
struct TYPE_12__ {int aInLoop; } ;
struct TYPE_13__ {TYPE_2__ in; } ;
struct TYPE_15__ {TYPE_3__ u; TYPE_1__* pWLoop; } ;
typedef TYPE_5__ WhereLevel ;
struct TYPE_16__ {int nLevel; TYPE_4__* pLoops; int sWC; TYPE_5__* a; } ;
typedef TYPE_6__ WhereInfo ;
struct TYPE_11__ {int wsFlags; } ;


 scalar_t__ ALWAYS (TYPE_6__*) ;
 int WHERE_IN_ABLE ;
 int sqlite3DbFree (int *,int ) ;
 int sqlite3DbFreeNN (int *,TYPE_6__*) ;
 int sqlite3WhereClauseClear (int *) ;
 int whereLoopDelete (int *,TYPE_4__*) ;

__attribute__((used)) static void whereInfoFree(sqlite3 *db, WhereInfo *pWInfo){
  if( ALWAYS(pWInfo) ){
    int i;
    for(i=0; i<pWInfo->nLevel; i++){
      WhereLevel *pLevel = &pWInfo->a[i];
      if( pLevel->pWLoop && (pLevel->pWLoop->wsFlags & WHERE_IN_ABLE) ){
        sqlite3DbFree(db, pLevel->u.in.aInLoop);
      }
    }
    sqlite3WhereClauseClear(&pWInfo->sWC);
    while( pWInfo->pLoops ){
      WhereLoop *p = pWInfo->pLoops;
      pWInfo->pLoops = p->pNextLoop;
      whereLoopDelete(db, p);
    }
    sqlite3DbFreeNN(db, pWInfo);
  }
}
