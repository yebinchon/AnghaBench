#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_12__ {int /*<<< orphan*/  pBackup; int /*<<< orphan*/  (* xReiniter ) (TYPE_1__*) ;int /*<<< orphan*/  pWal; } ;
struct TYPE_11__ {int /*<<< orphan*/  pgno; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(void *pCtx, Pgno iPg){
  int rc = SQLITE_OK;
  Pager *pPager = (Pager *)pCtx;
  PgHdr *pPg;

  FUNC0( FUNC1(pPager) );
  pPg = FUNC4(pPager, iPg);
  if( pPg ){
    if( FUNC7(pPg)==1 ){
      FUNC6(pPg);
    }else{
      u32 iFrame = 0;
      rc = FUNC8(pPager->pWal, pPg->pgno, &iFrame);
      if( rc==SQLITE_OK ){
        rc = FUNC2(pPg, iFrame);
      }
      if( rc==SQLITE_OK ){
        pPager->xReiniter(pPg);
      }
      FUNC5(pPg);
    }
  }

  /* Normally, if a transaction is rolled back, any backup processes are
  ** updated as data is copied out of the rollback journal and into the
  ** database. This is not generally possible with a WAL database, as
  ** rollback involves simply truncating the log file. Therefore, if one
  ** or more frames have already been written to the log (and therefore
  ** also copied into the backup databases) as part of this transaction,
  ** the backups must be restarted.
  */
  FUNC3(pPager->pBackup);

  return rc;
}