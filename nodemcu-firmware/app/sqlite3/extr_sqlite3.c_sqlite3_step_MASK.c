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
struct TYPE_10__ {int doingRerun; int pc; scalar_t__ expired; int rc; int /*<<< orphan*/  zErrMsg; TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MAX_SCHEMA_RETRY ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int SQLITE_SCHEMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 

int FUNC11(sqlite3_stmt *pStmt){
  int rc = SQLITE_OK;      /* Result from sqlite3Step() */
  int rc2 = SQLITE_OK;     /* Result from sqlite3Reprepare() */
  Vdbe *v = (Vdbe*)pStmt;  /* the prepared statement */
  int cnt = 0;             /* Counter to prevent infinite loop of reprepares */
  sqlite3 *db;             /* The database connection */

  if( FUNC10(v) ){
    return SQLITE_MISUSE_BKPT;
  }
  db = v->db;
  FUNC6(db->mutex);
  v->doingRerun = 0;
  while( (rc = FUNC5(v))==SQLITE_SCHEMA
         && cnt++ < SQLITE_MAX_SCHEMA_RETRY ){
    int savedPc = v->pc;
    rc2 = rc = FUNC4(v);
    if( rc!=SQLITE_OK) break;
    FUNC8(pStmt);
    if( savedPc>=0 ) v->doingRerun = 1;
    FUNC0( v->expired==0 );
  }
  if( rc2!=SQLITE_OK ){
    /* This case occurs after failing to recompile an sql statement.
    ** The error message from the SQL compiler has already been loaded
    ** into the database handle. This block copies the error message
    ** from the database handle into the statement and sets the statement
    ** program counter to 0 to ensure that when the statement is
    ** finalized or reset the parser error message is available via
    ** sqlite3_errmsg() and sqlite3_errcode().
    */
    const char *zErr = (const char *)FUNC9(db->pErr);
    FUNC2(db, v->zErrMsg);
    if( !db->mallocFailed ){
      v->zErrMsg = FUNC3(db, zErr);
      v->rc = rc2;
    } else {
      v->zErrMsg = 0;
      v->rc = rc = SQLITE_NOMEM_BKPT;
    }
  }
  rc = FUNC1(db, rc);
  FUNC7(db->mutex);
  return rc;
}