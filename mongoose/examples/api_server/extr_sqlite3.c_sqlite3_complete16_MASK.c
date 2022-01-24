#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_UTF16NATIVE ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 () ; 

int FUNC7(const void *zSql){
  sqlite3_value *pVal;
  char const *zSql8;
  int rc = SQLITE_NOMEM;

#ifndef SQLITE_OMIT_AUTOINIT
  rc = FUNC6();
  if( rc ) return rc;
#endif
  pVal = FUNC2(0);
  FUNC3(pVal, -1, zSql, SQLITE_UTF16NATIVE, SQLITE_STATIC);
  zSql8 = FUNC4(pVal, SQLITE_UTF8);
  if( zSql8 ){
    rc = FUNC5(zSql8);
  }else{
    rc = SQLITE_NOMEM;
  }
  FUNC1(pVal);
  return FUNC0(0, rc);
}