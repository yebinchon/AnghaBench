#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* xWalCallback ) (void*,TYPE_1__*,char const*,int) ;int /*<<< orphan*/  mutex; void* pWalArg; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void *FUNC2(
  sqlite3 *db,                    /* Attach the hook to this db handle */
  int(*xCallback)(void *, sqlite3*, const char*, int),
  void *pArg                      /* First argument passed to xCallback() */
){
#ifndef SQLITE_OMIT_WAL
  void *pRet;
  FUNC0(db->mutex);
  pRet = db->pWalArg;
  db->xWalCallback = xCallback;
  db->pWalArg = pArg;
  FUNC1(db->mutex);
  return pRet;
#else
  return 0;
#endif
}