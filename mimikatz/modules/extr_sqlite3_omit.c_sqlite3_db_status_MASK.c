#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_14__ ;

/* Type definitions */
struct Vdbe {struct Vdbe* pNext; } ;
struct TYPE_21__ {int* anStat; TYPE_8__* pFree; TYPE_8__* pInit; } ;
struct TYPE_26__ {int nDb; int* pnBytesFreed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  nDeferredCons; int /*<<< orphan*/  nDeferredImmCons; TYPE_5__* aDb; struct Vdbe* pVdbe; TYPE_1__ lookaside; } ;
typedef  TYPE_6__ sqlite3 ;
typedef  int /*<<< orphan*/  Trigger ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_29__ {int count; int /*<<< orphan*/  ht; } ;
struct TYPE_28__ {struct TYPE_28__* pNext; } ;
struct TYPE_24__ {int count; int /*<<< orphan*/  ht; } ;
struct TYPE_23__ {int count; int /*<<< orphan*/  ht; } ;
struct TYPE_27__ {TYPE_9__ tblHash; TYPE_9__ trigHash; TYPE_4__ fkeyHash; TYPE_3__ idxHash; } ;
struct TYPE_25__ {int /*<<< orphan*/ * pBt; TYPE_7__* pSchema; } ;
struct TYPE_22__ {int (* xRoundup ) (int) ;} ;
struct TYPE_20__ {TYPE_2__ m; } ;
typedef  TYPE_7__ Schema ;
typedef  int /*<<< orphan*/  Pager ;
typedef  TYPE_8__ LookasideSlot ;
typedef  int /*<<< orphan*/  HashElem ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  SQLITE_DBSTATUS_CACHE_HIT 140 
#define  SQLITE_DBSTATUS_CACHE_MISS 139 
#define  SQLITE_DBSTATUS_CACHE_SPILL 138 
#define  SQLITE_DBSTATUS_CACHE_USED 137 
#define  SQLITE_DBSTATUS_CACHE_USED_SHARED 136 
#define  SQLITE_DBSTATUS_CACHE_WRITE 135 
#define  SQLITE_DBSTATUS_DEFERRED_FKS 134 
#define  SQLITE_DBSTATUS_LOOKASIDE_HIT 133 
#define  SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL 132 
#define  SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE 131 
#define  SQLITE_DBSTATUS_LOOKASIDE_USED 130 
#define  SQLITE_DBSTATUS_SCHEMA_USED 129 
#define  SQLITE_DBSTATUS_STMT_USED 128 
 int SQLITE_ERROR ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,struct Vdbe*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_14__ sqlite3GlobalConfig ; 
 int FUNC9 (TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,struct Vdbe*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_9__*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

int FUNC22(
  sqlite3 *db,          /* The database connection whose status is desired */
  int op,               /* Status verb */
  int *pCurrent,        /* Write current value here */
  int *pHighwater,      /* Write high-water mark here */
  int resetFlag         /* Reset high-water mark if true */
){
  int rc = SQLITE_OK;   /* Return code */
#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) || pCurrent==0|| pHighwater==0 ){
    return SQLITE_MISUSE_BKPT;
  }
#endif
  FUNC15(db->mutex);
  switch( op ){
    case SQLITE_DBSTATUS_LOOKASIDE_USED: {
      *pCurrent = FUNC9(db, pHighwater);
      if( resetFlag ){
        LookasideSlot *p = db->lookaside.pFree;
        if( p ){
          while( p->pNext ) p = p->pNext;
          p->pNext = db->lookaside.pInit;
          db->lookaside.pInit = db->lookaside.pFree;
          db->lookaside.pFree = 0;
        }
      }
      break;
    }

    case SQLITE_DBSTATUS_LOOKASIDE_HIT:
    case SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE:
    case SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL: {
      FUNC21( op==SQLITE_DBSTATUS_LOOKASIDE_HIT );
      FUNC21( op==SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE );
      FUNC21( op==SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL );
      FUNC1( (op-SQLITE_DBSTATUS_LOOKASIDE_HIT)>=0 );
      FUNC1( (op-SQLITE_DBSTATUS_LOOKASIDE_HIT)<3 );
      *pCurrent = 0;
      *pHighwater = db->lookaside.anStat[op - SQLITE_DBSTATUS_LOOKASIDE_HIT];
      if( resetFlag ){
        db->lookaside.anStat[op - SQLITE_DBSTATUS_LOOKASIDE_HIT] = 0;
      }
      break;
    }

    /* 
    ** Return an approximation for the amount of memory currently used
    ** by all pagers associated with the given database connection.  The
    ** highwater mark is meaningless and is returned as zero.
    */
    case SQLITE_DBSTATUS_CACHE_USED_SHARED:
    case SQLITE_DBSTATUS_CACHE_USED: {
      int totalUsed = 0;
      int i;
      FUNC3(db);
      for(i=0; i<db->nDb; i++){
        Btree *pBt = db->aDb[i].pBt;
        if( pBt ){
          Pager *pPager = FUNC5(pBt);
          int nByte = FUNC11(pPager);
          if( op==SQLITE_DBSTATUS_CACHE_USED_SHARED ){
            nByte = nByte / FUNC2(pBt);
          }
          totalUsed += nByte;
        }
      }
      FUNC4(db);
      *pCurrent = totalUsed;
      *pHighwater = 0;
      break;
    }

    /*
    ** *pCurrent gets an accurate estimate of the amount of memory used
    ** to store the schema for all databases (main, temp, and any ATTACHed
    ** databases.  *pHighwater is set to zero.
    */
    case SQLITE_DBSTATUS_SCHEMA_USED: {
      int i;                      /* Used to iterate through schemas */
      int nByte = 0;              /* Used to accumulate return value */

      FUNC3(db);
      db->pnBytesFreed = &nByte;
      for(i=0; i<db->nDb; i++){
        Schema *pSchema = db->aDb[i].pSchema;
        if( FUNC0(pSchema!=0) ){
          HashElem *p;

          nByte += sqlite3GlobalConfig.m.xRoundup(sizeof(HashElem)) * (
              pSchema->tblHash.count 
            + pSchema->trigHash.count
            + pSchema->idxHash.count
            + pSchema->fkeyHash.count
          );
          nByte += FUNC14(pSchema->tblHash.ht);
          nByte += FUNC14(pSchema->trigHash.ht);
          nByte += FUNC14(pSchema->idxHash.ht);
          nByte += FUNC14(pSchema->fkeyHash.ht);

          for(p=FUNC18(&pSchema->trigHash); p; p=FUNC19(p)){
            FUNC8(db, (Trigger*)FUNC17(p));
          }
          for(p=FUNC18(&pSchema->tblHash); p; p=FUNC19(p)){
            FUNC7(db, (Table *)FUNC17(p));
          }
        }
      }
      db->pnBytesFreed = 0;
      FUNC4(db);

      *pHighwater = 0;
      *pCurrent = nByte;
      break;
    }

    /*
    ** *pCurrent gets an accurate estimate of the amount of memory used
    ** to store all prepared statements.
    ** *pHighwater is set to zero.
    */
    case SQLITE_DBSTATUS_STMT_USED: {
      struct Vdbe *pVdbe;         /* Used to iterate through VMs */
      int nByte = 0;              /* Used to accumulate return value */

      db->pnBytesFreed = &nByte;
      for(pVdbe=db->pVdbe; pVdbe; pVdbe=pVdbe->pNext){
        FUNC13(db, pVdbe);
        FUNC6(db, pVdbe);
      }
      db->pnBytesFreed = 0;

      *pHighwater = 0;  /* IMP: R-64479-57858 */
      *pCurrent = nByte;

      break;
    }

    /*
    ** Set *pCurrent to the total cache hits or misses encountered by all
    ** pagers the database handle is connected to. *pHighwater is always set 
    ** to zero.
    */
    case SQLITE_DBSTATUS_CACHE_SPILL:
      op = SQLITE_DBSTATUS_CACHE_WRITE+1;
      /* Fall through into the next case */
    case SQLITE_DBSTATUS_CACHE_HIT:
    case SQLITE_DBSTATUS_CACHE_MISS:
    case SQLITE_DBSTATUS_CACHE_WRITE:{
      int i;
      int nRet = 0;
      FUNC1( SQLITE_DBSTATUS_CACHE_MISS==SQLITE_DBSTATUS_CACHE_HIT+1 );
      FUNC1( SQLITE_DBSTATUS_CACHE_WRITE==SQLITE_DBSTATUS_CACHE_HIT+2 );

      for(i=0; i<db->nDb; i++){
        if( db->aDb[i].pBt ){
          Pager *pPager = FUNC5(db->aDb[i].pBt);
          FUNC10(pPager, op, resetFlag, &nRet);
        }
      }
      *pHighwater = 0; /* IMP: R-42420-56072 */
                       /* IMP: R-54100-20147 */
                       /* IMP: R-29431-39229 */
      *pCurrent = nRet;
      break;
    }

    /* Set *pCurrent to non-zero if there are unresolved deferred foreign
    ** key constraints.  Set *pCurrent to zero if all foreign key constraints
    ** have been satisfied.  The *pHighwater is always set to zero.
    */
    case SQLITE_DBSTATUS_DEFERRED_FKS: {
      *pHighwater = 0;  /* IMP: R-11967-56545 */
      *pCurrent = db->nDeferredImmCons>0 || db->nDeferredCons>0;
      break;
    }

    default: {
      rc = SQLITE_ERROR;
    }
  }
  FUNC16(db->mutex);
  return rc;
}