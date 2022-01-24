#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_5__* pInode; } ;
typedef  TYPE_1__ unixFile ;
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_7__ {scalar_t__ nLock; scalar_t__ bProcessLock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  NO_LOCK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(sqlite3_file *id){
  int rc = SQLITE_OK;
  unixFile *pFile = (unixFile *)id;
  FUNC8(pFile);
  FUNC7(id, NO_LOCK);
  FUNC5();

  /* unixFile.pInode is always valid here. Otherwise, a different close
  ** routine (e.g. nolockClose()) would be called instead.
  */
  FUNC1( pFile->pInode->nLock>0 || pFile->pInode->bProcessLock==0 );
  if( FUNC0(pFile->pInode) && pFile->pInode->nLock ){
    /* If there are outstanding locks, do not actually close the file just
    ** yet because that would clear those locks.  Instead, add the file
    ** descriptor to pInode->pUnused list.  It will be automatically closed
    ** when the last lock is cleared.
    */
    FUNC4(pFile);
  }
  FUNC3(pFile);
  rc = FUNC2(id);
  FUNC6();
  return rc;
}