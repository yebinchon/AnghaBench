#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_blob ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_8__ {scalar_t__ pStmt; TYPE_1__* db; } ;
typedef  TYPE_2__ Incrblob ;

/* Variables and functions */
 int SQLITE_ABORT ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int SQLITE_SCHEMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char**) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(sqlite3_blob *pBlob, sqlite3_int64 iRow){
  int rc;
  Incrblob *p = (Incrblob *)pBlob;
  sqlite3 *db;

  if( p==0 ) return SQLITE_MISUSE_BKPT;
  db = p->db;
  FUNC5(db->mutex);

  if( p->pStmt==0 ){
    /* If there is no statement handle, then the blob-handle has
    ** already been invalidated. Return SQLITE_ABORT in this case.
    */
    rc = SQLITE_ABORT;
  }else{
    char *zErr;
    rc = FUNC1(p, iRow, &zErr);
    if( rc!=SQLITE_OK ){
      FUNC4(db, rc, (zErr ? "%s" : 0), zErr);
      FUNC3(db, zErr);
    }
    FUNC0( rc!=SQLITE_SCHEMA );
  }

  rc = FUNC2(db, rc);
  FUNC0( rc==SQLITE_OK || p->pStmt==0 );
  FUNC6(db->mutex);
  return rc;
}