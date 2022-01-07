
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int nLevel; int pWC; struct TYPE_13__* zColAff; TYPE_3__* a; int idxStr; scalar_t__ needToFreeIdxStr; } ;
typedef TYPE_4__ sqlite3_index_info ;
typedef int sqlite3 ;
typedef TYPE_4__ WhereInfo ;
struct TYPE_10__ {TYPE_4__* pIdx; } ;
struct TYPE_11__ {int wsFlags; TYPE_1__ u; } ;
struct TYPE_12__ {TYPE_2__ plan; TYPE_4__* pIdxInfo; } ;
typedef TYPE_4__ Index ;


 scalar_t__ ALWAYS (TYPE_4__*) ;
 int WHERE_TEMP_INDEX ;
 int sqlite3DbFree (int *,TYPE_4__*) ;
 int sqlite3_free (int ) ;
 int whereClauseClear (int ) ;

__attribute__((used)) static void whereInfoFree(sqlite3 *db, WhereInfo *pWInfo){
  if( ALWAYS(pWInfo) ){
    int i;
    for(i=0; i<pWInfo->nLevel; i++){
      sqlite3_index_info *pInfo = pWInfo->a[i].pIdxInfo;
      if( pInfo ){

        if( pInfo->needToFreeIdxStr ){
          sqlite3_free(pInfo->idxStr);
        }
        sqlite3DbFree(db, pInfo);
      }
      if( pWInfo->a[i].plan.wsFlags & WHERE_TEMP_INDEX ){
        Index *pIdx = pWInfo->a[i].plan.u.pIdx;
        if( pIdx ){
          sqlite3DbFree(db, pIdx->zColAff);
          sqlite3DbFree(db, pIdx);
        }
      }
    }
    whereClauseClear(pWInfo->pWC);
    sqlite3DbFree(db, pWInfo);
  }
}
