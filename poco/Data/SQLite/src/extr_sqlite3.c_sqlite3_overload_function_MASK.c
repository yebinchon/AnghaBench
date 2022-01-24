#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 scalar_t__ FUNC0 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqlite3InvalidFunction ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(
  sqlite3 *db,
  const char *zName,
  int nArg
){
  int rc;
  char *zCopy;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) || zName==0 || nArg<-2 ){
    return SQLITE_MISUSE_BKPT;
  }
#endif
  FUNC4(db->mutex);
  rc = FUNC0(db, zName, nArg, SQLITE_UTF8, 0)!=0;
  FUNC5(db->mutex);
  if( rc ) return SQLITE_OK;
  zCopy = FUNC3(zName);
  if( zCopy==0 ) return SQLITE_NOMEM;
  return FUNC2(db, zName, nArg, SQLITE_UTF8,
                           zCopy, sqlite3InvalidFunction, 0, 0, sqlite3_free);
}