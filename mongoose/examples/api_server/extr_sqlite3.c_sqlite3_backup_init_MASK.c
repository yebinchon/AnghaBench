#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ pDest; int iNext; TYPE_1__* pSrc; scalar_t__ isAttached; TYPE_3__* pSrcDb; TYPE_3__* pDestDb; } ;
typedef  TYPE_2__ sqlite3_backup ;
struct TYPE_14__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_12__ {int /*<<< orphan*/  nBackup; } ;

/* Variables and functions */
 scalar_t__ SQLITE_ERROR ; 
 scalar_t__ SQLITE_NOMEM ; 
 void* FUNC0 (TYPE_3__*,TYPE_3__*,char const*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

sqlite3_backup *FUNC7(
  sqlite3* pDestDb,                     /* Database to write to */
  const char *zDestDb,                  /* Name of database within pDestDb */
  sqlite3* pSrcDb,                      /* Database connection to read from */
  const char *zSrcDb                    /* Name of database within pSrcDb */
){
  sqlite3_backup *p;                    /* Value to return */

  /* Lock the source database handle. The destination database
  ** handle is not locked in this routine, but it is locked in
  ** sqlite3_backup_step(). The user is required to ensure that no
  ** other thread accesses the destination handle for the duration
  ** of the backup operation.  Any attempt to use the destination
  ** database connection while a backup is in progress may cause
  ** a malfunction or a deadlock.
  */
  FUNC5(pSrcDb->mutex);
  FUNC5(pDestDb->mutex);

  if( pSrcDb==pDestDb ){
    FUNC2(
        pDestDb, SQLITE_ERROR, "source and destination must be distinct"
    );
    p = 0;
  }else {
    /* Allocate space for a new sqlite3_backup object...
    ** EVIDENCE-OF: R-64852-21591 The sqlite3_backup object is created by a
    ** call to sqlite3_backup_init() and is destroyed by a call to
    ** sqlite3_backup_finish(). */
    p = (sqlite3_backup *)FUNC3(sizeof(sqlite3_backup));
    if( !p ){
      FUNC2(pDestDb, SQLITE_NOMEM, 0);
    }
  }

  /* If the allocation succeeded, populate the new object. */
  if( p ){
    p->pSrc = FUNC0(pDestDb, pSrcDb, zSrcDb);
    p->pDest = FUNC0(pDestDb, pDestDb, zDestDb);
    p->pDestDb = pDestDb;
    p->pSrcDb = pSrcDb;
    p->iNext = 1;
    p->isAttached = 0;

    if( 0==p->pSrc || 0==p->pDest || FUNC1(p)==SQLITE_NOMEM ){
      /* One (or both) of the named databases did not exist or an OOM
      ** error was hit.  The error has already been written into the
      ** pDestDb handle.  All that is left to do here is free the
      ** sqlite3_backup structure.
      */
      FUNC4(p);
      p = 0;
    }
  }
  if( p ){
    p->pSrc->nBackup++;
  }

  FUNC6(pDestDb->mutex);
  FUNC6(pSrcDb->mutex);
  return p;
}