#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_10__ {scalar_t__ bEof; int /*<<< orphan*/  iStartOff; int /*<<< orphan*/ * aFile; int /*<<< orphan*/  pTask; } ;
struct TYPE_9__ {scalar_t__ iReadOff; scalar_t__ iEof; int nKey; int /*<<< orphan*/  aKey; TYPE_2__* pIncr; } ;
typedef  TYPE_1__ PmaReader ;
typedef  TYPE_2__ IncrMerger ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(PmaReader *pReadr){
  int rc = SQLITE_OK;             /* Return Code */
  u64 nRec = 0;                   /* Size of record in bytes */


  if( pReadr->iReadOff>=pReadr->iEof ){
    IncrMerger *pIncr = pReadr->pIncr;
    int bEof = 1;
    if( pIncr ){
      rc = FUNC1(pIncr);
      if( rc==SQLITE_OK && pIncr->bEof==0 ){
        rc = FUNC5(
            pIncr->pTask, pReadr, &pIncr->aFile[0], pIncr->iStartOff
        );
        bEof = 0;
      }
    }

    if( bEof ){
      /* This is an EOF condition */
      FUNC4(pReadr);
      FUNC0( rc!=SQLITE_OK );
      return rc;
    }
  }

  if( rc==SQLITE_OK ){
    rc = FUNC3(pReadr, &nRec);
  }
  if( rc==SQLITE_OK ){
    pReadr->nKey = (int)nRec;
    rc = FUNC2(pReadr, (int)nRec, &pReadr->aKey);
    FUNC0( rc!=SQLITE_OK );
  }

  return rc;
}