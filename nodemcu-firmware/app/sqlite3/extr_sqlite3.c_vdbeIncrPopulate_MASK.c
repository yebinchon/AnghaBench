#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_21__ {scalar_t__ iStartOff; scalar_t__ bEof; scalar_t__ mxSz; TYPE_6__* pMerger; TYPE_3__* pTask; TYPE_2__* aFile; } ;
struct TYPE_20__ {size_t* aTree; TYPE_3__* pTask; TYPE_5__* aReadr; } ;
struct TYPE_19__ {int nKey; scalar_t__ pFd; int /*<<< orphan*/  aKey; } ;
struct TYPE_18__ {scalar_t__ iWriteOff; scalar_t__ iBufEnd; } ;
struct TYPE_17__ {TYPE_1__* pSorter; } ;
struct TYPE_16__ {int /*<<< orphan*/  iEof; int /*<<< orphan*/  pFd; } ;
struct TYPE_15__ {int /*<<< orphan*/  pgsz; } ;
typedef  TYPE_2__ SorterFile ;
typedef  TYPE_3__ SortSubtask ;
typedef  TYPE_4__ PmaWriter ;
typedef  TYPE_5__ PmaReader ;
typedef  TYPE_6__ MergeEngine ;
typedef  TYPE_7__ IncrMerger ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 

__attribute__((used)) static int FUNC8(IncrMerger *pIncr){
  int rc = SQLITE_OK;
  int rc2;
  i64 iStart = pIncr->iStartOff;
  SorterFile *pOut = &pIncr->aFile[1];
  SortSubtask *pTask = pIncr->pTask;
  MergeEngine *pMerger = pIncr->pMerger;
  PmaWriter writer;
  FUNC0( pIncr->bEof==0 );

  FUNC7(pTask, "enter");

  FUNC6(pOut->pFd, &writer, pTask->pSorter->pgsz, iStart);
  while( rc==SQLITE_OK ){
    int dummy;
    PmaReader *pReader = &pMerger->aReadr[ pMerger->aTree[1] ];
    int nKey = pReader->nKey;
    i64 iEof = writer.iWriteOff + writer.iBufEnd;

    /* Check if the output file is full or if the input has been exhausted.
    ** In either case exit the loop. */
    if( pReader->pFd==0 ) break;
    if( (iEof + nKey + FUNC1(nKey))>(iStart + pIncr->mxSz) ) break;

    /* Write the next key to the output. */
    FUNC4(&writer, nKey);
    FUNC3(&writer, pReader->aKey, nKey);
    FUNC0( pIncr->pMerger->pTask==pTask );
    rc = FUNC2(pIncr->pMerger, &dummy);
  }

  rc2 = FUNC5(&writer, &pOut->iEof);
  if( rc==SQLITE_OK ) rc = rc2;
  FUNC7(pTask, "exit");
  return rc;
}