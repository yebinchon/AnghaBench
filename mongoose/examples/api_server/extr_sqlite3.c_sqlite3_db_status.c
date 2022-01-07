
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct Vdbe {struct Vdbe* pNext; } ;
struct TYPE_18__ {int nOut; int mxOut; int* anStat; } ;
struct TYPE_23__ {int nDb; int* pnBytesFreed; int mutex; TYPE_5__* aDb; struct Vdbe* pVdbe; TYPE_1__ lookaside; } ;
typedef TYPE_6__ sqlite3 ;
typedef int Trigger ;
typedef int Table ;
struct TYPE_25__ {int count; int ht; } ;
struct TYPE_21__ {int count; int ht; } ;
struct TYPE_20__ {int count; int ht; } ;
struct TYPE_24__ {TYPE_8__ tblHash; TYPE_8__ trigHash; TYPE_4__ fkeyHash; TYPE_3__ idxHash; } ;
struct TYPE_22__ {int * pBt; TYPE_7__* pSchema; } ;
struct TYPE_19__ {int (* xRoundup ) (int) ;} ;
struct TYPE_17__ {TYPE_2__ m; } ;
typedef TYPE_7__ Schema ;
typedef int Pager ;
typedef int HashElem ;
typedef int Btree ;


 int ALWAYS (int) ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3BtreeEnterAll (TYPE_6__*) ;
 int sqlite3BtreeLeaveAll (TYPE_6__*) ;
 int * sqlite3BtreePager (int *) ;
 int sqlite3DbFree (TYPE_6__*,struct Vdbe*) ;
 int sqlite3DeleteTable (TYPE_6__*,int *) ;
 int sqlite3DeleteTrigger (TYPE_6__*,int *) ;
 TYPE_11__ sqlite3GlobalConfig ;
 int sqlite3MallocSize (int ) ;
 int sqlite3PagerCacheStat (int *,int,int,int*) ;
 int sqlite3PagerMemUsed (int *) ;
 int sqlite3VdbeClearObject (TYPE_6__*,struct Vdbe*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 scalar_t__ sqliteHashData (int *) ;
 int * sqliteHashFirst (TYPE_8__*) ;
 int * sqliteHashNext (int *) ;
 int stub1 (int) ;
 int testcase (int) ;

int sqlite3_db_status(
  sqlite3 *db,
  int op,
  int *pCurrent,
  int *pHighwater,
  int resetFlag
){
  int rc = SQLITE_OK;
  sqlite3_mutex_enter(db->mutex);
  switch( op ){
    case 130: {
      *pCurrent = db->lookaside.nOut;
      *pHighwater = db->lookaside.mxOut;
      if( resetFlag ){
        db->lookaside.mxOut = db->lookaside.nOut;
      }
      break;
    }

    case 133:
    case 131:
    case 132: {
      testcase( op==133 );
      testcase( op==131 );
      testcase( op==132 );
      assert( (op-133)>=0 );
      assert( (op-133)<3 );
      *pCurrent = 0;
      *pHighwater = db->lookaside.anStat[op - 133];
      if( resetFlag ){
        db->lookaside.anStat[op - 133] = 0;
      }
      break;
    }






    case 135: {
      int totalUsed = 0;
      int i;
      sqlite3BtreeEnterAll(db);
      for(i=0; i<db->nDb; i++){
        Btree *pBt = db->aDb[i].pBt;
        if( pBt ){
          Pager *pPager = sqlite3BtreePager(pBt);
          totalUsed += sqlite3PagerMemUsed(pPager);
        }
      }
      sqlite3BtreeLeaveAll(db);
      *pCurrent = totalUsed;
      *pHighwater = 0;
      break;
    }






    case 129: {
      int i;
      int nByte = 0;

      sqlite3BtreeEnterAll(db);
      db->pnBytesFreed = &nByte;
      for(i=0; i<db->nDb; i++){
        Schema *pSchema = db->aDb[i].pSchema;
        if( ALWAYS(pSchema!=0) ){
          HashElem *p;

          nByte += sqlite3GlobalConfig.m.xRoundup(sizeof(HashElem)) * (
              pSchema->tblHash.count
            + pSchema->trigHash.count
            + pSchema->idxHash.count
            + pSchema->fkeyHash.count
          );
          nByte += sqlite3MallocSize(pSchema->tblHash.ht);
          nByte += sqlite3MallocSize(pSchema->trigHash.ht);
          nByte += sqlite3MallocSize(pSchema->idxHash.ht);
          nByte += sqlite3MallocSize(pSchema->fkeyHash.ht);

          for(p=sqliteHashFirst(&pSchema->trigHash); p; p=sqliteHashNext(p)){
            sqlite3DeleteTrigger(db, (Trigger*)sqliteHashData(p));
          }
          for(p=sqliteHashFirst(&pSchema->tblHash); p; p=sqliteHashNext(p)){
            sqlite3DeleteTable(db, (Table *)sqliteHashData(p));
          }
        }
      }
      db->pnBytesFreed = 0;
      sqlite3BtreeLeaveAll(db);

      *pHighwater = 0;
      *pCurrent = nByte;
      break;
    }






    case 128: {
      struct Vdbe *pVdbe;
      int nByte = 0;

      db->pnBytesFreed = &nByte;
      for(pVdbe=db->pVdbe; pVdbe; pVdbe=pVdbe->pNext){
        sqlite3VdbeClearObject(db, pVdbe);
        sqlite3DbFree(db, pVdbe);
      }
      db->pnBytesFreed = 0;

      *pHighwater = 0;
      *pCurrent = nByte;

      break;
    }






    case 137:
    case 136:
    case 134:{
      int i;
      int nRet = 0;
      assert( 136==137 +1 );
      assert( 134==137 +2 );

      for(i=0; i<db->nDb; i++){
        if( db->aDb[i].pBt ){
          Pager *pPager = sqlite3BtreePager(db->aDb[i].pBt);
          sqlite3PagerCacheStat(pPager, op, resetFlag, &nRet);
        }
      }
      *pHighwater = 0;
      *pCurrent = nRet;
      break;
    }

    default: {
      rc = SQLITE_ERROR;
    }
  }
  sqlite3_mutex_leave(db->mutex);
  return rc;
}
