#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_9__ {int /*<<< orphan*/  pCollNeededArg; int /*<<< orphan*/  (* xCollNeeded16 ) (int /*<<< orphan*/ ,TYPE_1__*,int,char const*) ;int /*<<< orphan*/  (* xCollNeeded ) (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ;} ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_UTF16NATIVE ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 char* FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int,char const*) ; 

__attribute__((used)) static void FUNC10(sqlite3 *db, int enc, const char *zName){
  FUNC1( !db->xCollNeeded || !db->xCollNeeded16 );
  if( db->xCollNeeded ){
    char *zExternal = FUNC3(db, zName);
    if( !zExternal ) return;
    db->xCollNeeded(db->pCollNeededArg, db, enc, zExternal);
    FUNC2(db, zExternal);
  }
#ifndef SQLITE_OMIT_UTF16
  if( db->xCollNeeded16 ){
    char const *zExternal;
    sqlite3_value *pTmp = FUNC5(db);
    FUNC6(pTmp, -1, zName, SQLITE_UTF8, SQLITE_STATIC);
    zExternal = FUNC7(pTmp, SQLITE_UTF16NATIVE);
    if( zExternal ){
      db->xCollNeeded16(db->pCollNeededArg, db, (int)FUNC0(db), zExternal);
    }
    FUNC4(pTmp);
  }
#endif
}