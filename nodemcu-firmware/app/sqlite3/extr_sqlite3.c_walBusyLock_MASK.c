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
typedef  int /*<<< orphan*/  Wal ;

/* Variables and functions */
 int SQLITE_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC1(
  Wal *pWal,                      /* WAL connection */
  int (*xBusy)(void*),            /* Function to call when busy */
  void *pBusyArg,                 /* Context argument for xBusyHandler */
  int lockIdx,                    /* Offset of first byte to lock */
  int n                           /* Number of bytes to lock */
){
  int rc;
  do {
    rc = FUNC0(pWal, lockIdx, n);
  }while( xBusy && rc==SQLITE_BUSY && xBusy(pBusyArg) );
  return rc;
}