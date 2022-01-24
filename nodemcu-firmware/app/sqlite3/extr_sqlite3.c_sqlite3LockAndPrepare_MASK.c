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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int SQLITE_SCHEMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(
  sqlite3 *db,              /* Database handle. */
  const char *zSql,         /* UTF-8 encoded SQL statement. */
  int nBytes,               /* Length of zSql in bytes. */
  int saveSqlFlag,          /* True to copy SQL text into the sqlite3_stmt */
  Vdbe *pOld,               /* VM being reprepared */
  sqlite3_stmt **ppStmt,    /* OUT: A pointer to the prepared statement */
  const char **pzTail       /* OUT: End of parsed string */
){
  int rc;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( ppStmt==0 ) return SQLITE_MISUSE_BKPT;
#endif
  *ppStmt = 0;
  if( !FUNC4(db)||zSql==0 ){
    return SQLITE_MISUSE_BKPT;
  }
  FUNC6(db->mutex);
  FUNC1(db);
  rc = FUNC3(db, zSql, nBytes, saveSqlFlag, pOld, ppStmt, pzTail);
  if( rc==SQLITE_SCHEMA ){
    FUNC5(*ppStmt);
    rc = FUNC3(db, zSql, nBytes, saveSqlFlag, pOld, ppStmt, pzTail);
  }
  FUNC2(db);
  FUNC7(db->mutex);
  FUNC0( rc==SQLITE_OK || *ppStmt==0 );
  return rc;
}