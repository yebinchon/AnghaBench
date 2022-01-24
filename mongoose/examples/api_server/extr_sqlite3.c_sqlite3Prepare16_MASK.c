#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF16NATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (void const*,int) ; 
 char* FUNC6 (TYPE_1__*,void const*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
  sqlite3 *db,              /* Database handle. */ 
  const void *zSql,         /* UTF-16 encoded SQL statement. */
  int nBytes,               /* Length of zSql in bytes. */
  int saveSqlFlag,          /* True to save SQL text into the sqlite3_stmt */
  sqlite3_stmt **ppStmt,    /* OUT: A pointer to the prepared statement */
  const void **pzTail       /* OUT: End of parsed string */
){
  /* This function currently works by first transforming the UTF-16
  ** encoded string to UTF-8, then invoking sqlite3_prepare(). The
  ** tricky bit is figuring out the pointer to return in *pzTail.
  */
  char *zSql8;
  const char *zTail8 = 0;
  int rc = SQLITE_OK;

  FUNC0( ppStmt );
  *ppStmt = 0;
  if( !FUNC4(db) ){
    return SQLITE_MISUSE_BKPT;
  }
  FUNC8(db->mutex);
  zSql8 = FUNC6(db, zSql, nBytes, SQLITE_UTF16NATIVE);
  if( zSql8 ){
    rc = FUNC3(db, zSql8, -1, saveSqlFlag, 0, ppStmt, &zTail8);
  }

  if( zTail8 && pzTail ){
    /* If sqlite3_prepare returns a tail pointer, we calculate the
    ** equivalent pointer into the UTF-16 string by counting the unicode
    ** characters between zSql8 and zTail8, and then returning a pointer
    ** the same number of characters into the UTF-16 string.
    */
    int chars_parsed = FUNC7(zSql8, (int)(zTail8-zSql8));
    *pzTail = (u8 *)zSql + FUNC5(zSql, chars_parsed);
  }
  FUNC2(db, zSql8); 
  rc = FUNC1(db, rc);
  FUNC9(db->mutex);
  return rc;
}