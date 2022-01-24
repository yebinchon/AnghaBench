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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ,void*,int (*) (void*,int,void const*,int,void const*),void (*) (void*)) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(
  sqlite3* db,
  const char *zName,
  int enc,
  void* pCtx,
  int(*xCompare)(void*,int,const void*,int,const void*),
  void(*xDel)(void*)
){
  int rc;

#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) || zName==0 ) return SQLITE_MISUSE_BKPT;
#endif
  FUNC4(db->mutex);
  FUNC0( !db->mallocFailed );
  rc = FUNC1(db, zName, (u8)enc, pCtx, xCompare, xDel);
  rc = FUNC2(db, rc);
  FUNC5(db->mutex);
  return rc;
}