#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pMerger; TYPE_1__* aFile; int /*<<< orphan*/  pTask; scalar_t__ bUseThread; } ;
struct TYPE_5__ {scalar_t__ pFd; } ;
typedef  TYPE_2__ IncrMerger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(IncrMerger *pIncr){
  if( pIncr ){
#if SQLITE_MAX_WORKER_THREADS>0
    if( pIncr->bUseThread ){
      vdbeSorterJoinThread(pIncr->pTask);
      if( pIncr->aFile[0].pFd ) sqlite3OsCloseFree(pIncr->aFile[0].pFd);
      if( pIncr->aFile[1].pFd ) sqlite3OsCloseFree(pIncr->aFile[1].pFd);
    }
#endif
    FUNC2(pIncr->pMerger);
    FUNC1(pIncr);
  }
}