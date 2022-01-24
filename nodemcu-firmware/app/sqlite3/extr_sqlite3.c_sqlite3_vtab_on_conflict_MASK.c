#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int vtabOnConflict; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int OE_Abort ; 
 int OE_Fail ; 
 int OE_Ignore ; 
 int OE_Replace ; 
 int OE_Rollback ; 
#define  SQLITE_ABORT 132 
#define  SQLITE_FAIL 131 
#define  SQLITE_IGNORE 130 
 int SQLITE_MISUSE_BKPT ; 
#define  SQLITE_REPLACE 129 
#define  SQLITE_ROLLBACK 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(sqlite3 *db){
  static const unsigned char aMap[] = {
    SQLITE_ROLLBACK, SQLITE_ABORT, SQLITE_FAIL, SQLITE_IGNORE, SQLITE_REPLACE
  };
#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) ) return SQLITE_MISUSE_BKPT;
#endif
  FUNC0( OE_Rollback==1 && OE_Abort==2 && OE_Fail==3 );
  FUNC0( OE_Ignore==4 && OE_Replace==5 );
  FUNC0( db->vtabOnConflict>=1 && db->vtabOnConflict<=5 );
  return (int)aMap[db->vtabOnConflict-1];
}