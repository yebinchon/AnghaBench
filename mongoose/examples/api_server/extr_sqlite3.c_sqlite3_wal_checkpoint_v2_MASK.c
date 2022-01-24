#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_CHECKPOINT_FULL ; 
 int SQLITE_CHECKPOINT_PASSIVE ; 
 int SQLITE_CHECKPOINT_RESTART ; 
 int SQLITE_ERROR ; 
 int SQLITE_MAX_ATTACHED ; 
 int SQLITE_MISUSE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*,...) ; 
 int FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(
  sqlite3 *db,                    /* Database handle */
  const char *zDb,                /* Name of attached database (or NULL) */
  int eMode,                      /* SQLITE_CHECKPOINT_* value */
  int *pnLog,                     /* OUT: Size of WAL log in frames */
  int *pnCkpt                     /* OUT: Total number of frames checkpointed */
){
#ifdef SQLITE_OMIT_WAL
  return SQLITE_OK;
#else
  int rc;                         /* Return code */
  int iDb = SQLITE_MAX_ATTACHED;  /* sqlite3.aDb[] index of db to checkpoint */

  /* Initialize the output variables to -1 in case an error occurs. */
  if( pnLog ) *pnLog = -1;
  if( pnCkpt ) *pnCkpt = -1;

  FUNC0( SQLITE_CHECKPOINT_FULL>SQLITE_CHECKPOINT_PASSIVE );
  FUNC0( SQLITE_CHECKPOINT_FULL<SQLITE_CHECKPOINT_RESTART );
  FUNC0( SQLITE_CHECKPOINT_PASSIVE+2==SQLITE_CHECKPOINT_RESTART );
  if( eMode<SQLITE_CHECKPOINT_PASSIVE || eMode>SQLITE_CHECKPOINT_RESTART ){
    return SQLITE_MISUSE;
  }

  FUNC5(db->mutex);
  if( zDb && zDb[0] ){
    iDb = FUNC4(db, zDb);
  }
  if( iDb<0 ){
    rc = SQLITE_ERROR;
    FUNC3(db, SQLITE_ERROR, "unknown database: %s", zDb);
  }else{
    rc = FUNC2(db, iDb, eMode, pnLog, pnCkpt);
    FUNC3(db, rc, 0);
  }
  rc = FUNC1(db, rc);
  FUNC6(db->mutex);
  return rc;
#endif
}