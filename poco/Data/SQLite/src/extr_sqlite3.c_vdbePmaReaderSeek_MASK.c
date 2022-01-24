#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int i64 ;
struct TYPE_15__ {scalar_t__ aMap; int iReadOff; int nBuffer; int /*<<< orphan*/ * aBuffer; int /*<<< orphan*/  pFd; int /*<<< orphan*/  iEof; TYPE_1__* pIncr; } ;
struct TYPE_14__ {TYPE_2__* pSorter; } ;
struct TYPE_13__ {int /*<<< orphan*/  pFd; int /*<<< orphan*/  iEof; } ;
struct TYPE_12__ {int pgsz; } ;
struct TYPE_11__ {scalar_t__ bEof; } ;
typedef  TYPE_3__ SorterFile ;
typedef  TYPE_4__ SortSubtask ;
typedef  TYPE_5__ PmaReader ;

/* Variables and functions */
 int SQLITE_IOERR_READ ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_4__*,TYPE_3__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC7(
  SortSubtask *pTask,             /* Task context */
  PmaReader *pReadr,              /* Reader whose cursor is to be moved */
  SorterFile *pFile,              /* Sorter file to read from */
  i64 iOff                        /* Offset in pFile */
){
  int rc = SQLITE_OK;

  FUNC0( pReadr->pIncr==0 || pReadr->pIncr->bEof==0 );

  if( FUNC1(201) ) return SQLITE_IOERR_READ;
  if( pReadr->aMap ){
    FUNC4(pReadr->pFd, 0, pReadr->aMap);
    pReadr->aMap = 0;
  }
  pReadr->iReadOff = iOff;
  pReadr->iEof = pFile->iEof;
  pReadr->pFd = pFile->pFd;

  rc = FUNC6(pTask, pFile, &pReadr->aMap);
  if( rc==SQLITE_OK && pReadr->aMap==0 ){
    int pgsz = pTask->pSorter->pgsz;
    int iBuf = pReadr->iReadOff % pgsz;
    if( pReadr->aBuffer==0 ){
      pReadr->aBuffer = (u8*)FUNC2(pgsz);
      if( pReadr->aBuffer==0 ) rc = SQLITE_NOMEM_BKPT;
      pReadr->nBuffer = pgsz;
    }
    if( rc==SQLITE_OK && iBuf ){
      int nRead = pgsz - iBuf;
      if( (pReadr->iReadOff + nRead) > pReadr->iEof ){
        nRead = (int)(pReadr->iEof - pReadr->iReadOff);
      }
      rc = FUNC3(
          pReadr->pFd, &pReadr->aBuffer[iBuf], nRead, pReadr->iReadOff
      );
      FUNC5( rc!=SQLITE_OK );
    }
  }

  return rc;
}