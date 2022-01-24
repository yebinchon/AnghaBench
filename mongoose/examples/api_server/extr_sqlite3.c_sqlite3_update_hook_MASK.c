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
struct TYPE_3__ {void (* xUpdateCallback ) (void*,int,char const*,char const*,sqlite_int64) ;int /*<<< orphan*/  mutex; void* pUpdateArg; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void *FUNC2(
  sqlite3 *db,              /* Attach the hook to this database */
  void (*xCallback)(void*,int,char const *,char const *,sqlite_int64),
  void *pArg                /* Argument to the function */
){
  void *pRet;
  FUNC0(db->mutex);
  pRet = db->pUpdateArg;
  db->xUpdateCallback = xCallback;
  db->pUpdateArg = pArg;
  FUNC1(db->mutex);
  return pRet;
}