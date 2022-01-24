#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void (* xTrace ) (void*,char const*) ;int /*<<< orphan*/  mutex; void* pTraceArg; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void *FUNC2(sqlite3 *db, void (*xTrace)(void*,const char*), void *pArg){
  void *pOld;
  FUNC0(db->mutex);
  pOld = db->pTraceArg;
  db->xTrace = xTrace;
  db->pTraceArg = pArg;
  FUNC1(db->mutex);
  return pOld;
}