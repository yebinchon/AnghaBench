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
struct TYPE_4__ {unsigned int mTrace; int (* xTrace ) (unsigned int,void*,void*,void*) ;int /*<<< orphan*/  mutex; void* pTraceArg; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(
  sqlite3 *db,                               /* Trace this connection */
  unsigned mTrace,                           /* Mask of events to be traced */
  int(*xTrace)(unsigned,void*,void*,void*),  /* Callback to invoke */
  void *pArg                                 /* Context */
){
#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) ){
    return SQLITE_MISUSE_BKPT;
  }
#endif
  FUNC1(db->mutex);
  if( mTrace==0 ) xTrace = 0;
  if( xTrace==0 ) mTrace = 0;
  db->mTrace = mTrace;
  db->xTrace = xTrace;
  db->pTraceArg = pArg;
  FUNC2(db->mutex);
  return SQLITE_OK;
}