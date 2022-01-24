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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF16NATIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,void*,int (*) (void*,int,void const*,int,void const*),int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 char* FUNC4 (TYPE_1__*,void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(
  sqlite3* db, 
  const void *zName,
  int enc, 
  void* pCtx,
  int(*xCompare)(void*,int,const void*,int,const void*)
){
  int rc = SQLITE_OK;
  char *zName8;
  FUNC5(db->mutex);
  FUNC0( !db->mallocFailed );
  zName8 = FUNC4(db, zName, -1, SQLITE_UTF16NATIVE);
  if( zName8 ){
    rc = FUNC1(db, zName8, (u8)enc, pCtx, xCompare, 0);
    FUNC3(db, zName8);
  }
  rc = FUNC2(db, rc);
  FUNC6(db->mutex);
  return rc;
}