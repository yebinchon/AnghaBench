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
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_3__ {scalar_t__ iSyncPoint; int syncFlags; int /*<<< orphan*/  pFd; } ;
typedef  TYPE_1__ WalWriter ;

/* Variables and functions */
 int SQLITE_SYNC_FULL ; 
 int SQLITE_SYNC_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(
  WalWriter *p,              /* WAL to write to */
  void *pContent,            /* Content to be written */
  int iAmt,                  /* Number of bytes to write */
  sqlite3_int64 iOffset      /* Start writing at this offset */
){
  int rc;
  if( iOffset<p->iSyncPoint && iOffset+iAmt>=p->iSyncPoint ){
    int iFirstAmt = (int)(p->iSyncPoint - iOffset);
    rc = FUNC2(p->pFd, pContent, iFirstAmt, iOffset);
    if( rc ) return rc;
    iOffset += iFirstAmt;
    iAmt -= iFirstAmt;
    pContent = (void*)(iFirstAmt + (char*)pContent);
    FUNC0( p->syncFlags & (SQLITE_SYNC_NORMAL|SQLITE_SYNC_FULL) );
    rc = FUNC1(p->pFd, p->syncFlags);
    if( iAmt==0 || rc ) return rc;
  }
  rc = FUNC2(p->pFd, pContent, iAmt, iOffset);
  return rc;
}