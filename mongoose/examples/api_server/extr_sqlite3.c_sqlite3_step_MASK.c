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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mallocFailed; int /*<<< orphan*/  pErr; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_10__ {int doingRerun; scalar_t__ expired; int rc; int /*<<< orphan*/  zErrMsg; int /*<<< orphan*/  isPrepareV2; TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQLITE_MAX_SCHEMA_RETRY ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_SCHEMA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 

int FUNC12(sqlite3_stmt *pStmt){
  int rc = SQLITE_OK;      /* Result from sqlite3Step() */
  int rc2 = SQLITE_OK;     /* Result from sqlite3Reprepare() */
  Vdbe *v = (Vdbe*)pStmt;  /* the prepared statement */
  int cnt = 0;             /* Counter to prevent infinite loop of reprepares */
  sqlite3 *db;             /* The database connection */

  if( FUNC11(v) ){
    return SQLITE_MISUSE_BKPT;
  }
  db = v->db;
  FUNC7(db->mutex);
  v->doingRerun = 0;
  while( (rc = FUNC6(v))==SQLITE_SCHEMA
         && cnt++ < SQLITE_MAX_SCHEMA_RETRY
         && (rc2 = rc = FUNC5(v))==SQLITE_OK ){
    FUNC9(pStmt);
    v->doingRerun = 1;
    FUNC1( v->expired==0 );
  }
  if( rc2!=SQLITE_OK && FUNC0(v->isPrepareV2) && FUNC0(db->pErr) ){
    /* This case occurs after failing to recompile an sql statement. 
    ** The error message from the SQL compiler has already been loaded 
    ** into the database handle. This block copies the error message 
    ** from the database handle into the statement and sets the statement
    ** program counter to 0 to ensure that when the statement is 
    ** finalized or reset the parser error message is available via
    ** sqlite3_errmsg() and sqlite3_errcode().
    */
    const char *zErr = (const char *)FUNC10(db->pErr); 
    FUNC3(db, v->zErrMsg);
    if( !db->mallocFailed ){
      v->zErrMsg = FUNC4(db, zErr);
      v->rc = rc2;
    } else {
      v->zErrMsg = 0;
      v->rc = rc = SQLITE_NOMEM;
    }
  }
  rc = FUNC2(db, rc);
  FUNC8(db->mutex);
  return rc;
}