#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
struct Vdbe {struct Vdbe* pNext; } ;
struct TYPE_18__ {int nOut; int mxOut; int* anStat; } ;
struct TYPE_23__ {int nDb; int* pnBytesFreed; int /*<<< orphan*/  mutex; TYPE_5__* aDb; struct Vdbe* pVdbe; TYPE_1__ lookaside; } ;
typedef  TYPE_6__ sqlite3 ;
typedef  int /*<<< orphan*/  Trigger ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_25__ {int count; int /*<<< orphan*/  ht; } ;
struct TYPE_21__ {int count; int /*<<< orphan*/  ht; } ;
struct TYPE_20__ {int count; int /*<<< orphan*/  ht; } ;
struct TYPE_24__ {TYPE_8__ tblHash; TYPE_8__ trigHash; TYPE_4__ fkeyHash; TYPE_3__ idxHash; } ;
struct TYPE_22__ {int /*<<< orphan*/ * pBt; TYPE_7__* pSchema; } ;
struct TYPE_19__ {int (* xRoundup ) (int) ;} ;
struct TYPE_17__ {TYPE_2__ m; } ;
typedef  TYPE_7__ Schema ;
typedef  int /*<<< orphan*/  Pager ;
typedef  int /*<<< orphan*/  HashElem ;
typedef  int /*<<< orphan*/  Btree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  SQLITE_DBSTATUS_CACHE_HIT 137 
#define  SQLITE_DBSTATUS_CACHE_MISS 136 
#define  SQLITE_DBSTATUS_CACHE_USED 135 
#define  SQLITE_DBSTATUS_CACHE_WRITE 134 
#define  SQLITE_DBSTATUS_LOOKASIDE_HIT 133 
#define  SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL 132 
#define  SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE 131 
#define  SQLITE_DBSTATUS_LOOKASIDE_USED 130 
#define  SQLITE_DBSTATUS_SCHEMA_USED 129 
#define  SQLITE_DBSTATUS_STMT_USED 128 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,struct Vdbe*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 TYPE_11__ sqlite3GlobalConfig ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,struct Vdbe*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

int FUNC19(
  sqlite3 *db,          /* The database connection whose status is desired */
  int op,               /* Status verb */
  int *pCurrent,        /* Write current value here */
  int *pHighwater,      /* Write high-water mark here */
  int resetFlag         /* Reset high-water mark if true */
){
  int rc = SQLITE_OK;   /* Return code */
  FUNC12(db->mutex);
  switch( op ){
    case SQLITE_DBSTATUS_LOOKASIDE_USED: {
      *pCurrent = db->lookaside.nOut;
      *pHighwater = db->lookaside.mxOut;
      if( resetFlag ){
        db->lookaside.mxOut = db->lookaside.nOut;
      }
      break;
    }

    case SQLITE_DBSTATUS_LOOKASIDE_HIT:
    case SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE:
    case SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL: {
      FUNC18( op==SQLITE_DBSTATUS_LOOKASIDE_HIT );
      FUNC18( op==SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE );
      FUNC18( op==SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL );
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
    case SQLITE_DBSTATUS_CACHE_USED: {
      int totalUsed = 0;
      int i;
      FUNC2(db);
      for(i=0; i<db->nDb; i++){
        Btree *pBt = db->aDb[i].pBt;
        if( pBt ){
          Pager *pPager = FUNC4(pBt);
          totalUsed += FUNC10(pPager);
        }
      }
      FUNC3(db);
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

      FUNC2(db);
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
          nByte += FUNC8(pSchema->tblHash.ht);
          nByte += FUNC8(pSchema->trigHash.ht);
          nByte += FUNC8(pSchema->idxHash.ht);
          nByte += FUNC8(pSchema->fkeyHash.ht);

          for(p=FUNC15(&pSchema->trigHash); p; p=FUNC16(p)){
            FUNC7(db, (Trigger*)FUNC14(p));
          }
          for(p=FUNC15(&pSchema->tblHash); p; p=FUNC16(p)){
            FUNC6(db, (Table *)FUNC14(p));
          }
        }
      }
      db->pnBytesFreed = 0;
      FUNC3(db);

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
        FUNC11(db, pVdbe);
        FUNC5(db, pVdbe);
      }
      db->pnBytesFreed = 0;

      *pHighwater = 0;
      *pCurrent = nByte;

      break;
    }

    /*
    ** Set *pCurrent to the total cache hits or misses encountered by all
    ** pagers the database handle is connected to. *pHighwater is always set 
    ** to zero.
    */
    case SQLITE_DBSTATUS_CACHE_HIT:
    case SQLITE_DBSTATUS_CACHE_MISS:
    case SQLITE_DBSTATUS_CACHE_WRITE:{
      int i;
      int nRet = 0;
      FUNC1( SQLITE_DBSTATUS_CACHE_MISS==SQLITE_DBSTATUS_CACHE_HIT+1 );
      FUNC1( SQLITE_DBSTATUS_CACHE_WRITE==SQLITE_DBSTATUS_CACHE_HIT+2 );

      for(i=0; i<db->nDb; i++){
        if( db->aDb[i].pBt ){
          Pager *pPager = FUNC4(db->aDb[i].pBt);
          FUNC9(pPager, op, resetFlag, &nRet);
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
  FUNC13(db->mutex);
  return rc;
}