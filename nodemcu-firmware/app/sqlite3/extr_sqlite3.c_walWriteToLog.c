
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_3__ {scalar_t__ iSyncPoint; int syncFlags; int pFd; } ;
typedef TYPE_1__ WalWriter ;


 int SQLITE_SYNC_FULL ;
 int SQLITE_SYNC_MASK ;
 int SQLITE_SYNC_NORMAL ;
 int assert (int) ;
 int sqlite3OsSync (int ,int) ;
 int sqlite3OsWrite (int ,void*,int,scalar_t__) ;

__attribute__((used)) static int walWriteToLog(
  WalWriter *p,
  void *pContent,
  int iAmt,
  sqlite3_int64 iOffset
){
  int rc;
  if( iOffset<p->iSyncPoint && iOffset+iAmt>=p->iSyncPoint ){
    int iFirstAmt = (int)(p->iSyncPoint - iOffset);
    rc = sqlite3OsWrite(p->pFd, pContent, iFirstAmt, iOffset);
    if( rc ) return rc;
    iOffset += iFirstAmt;
    iAmt -= iFirstAmt;
    pContent = (void*)(iFirstAmt + (char*)pContent);
    assert( p->syncFlags & (SQLITE_SYNC_NORMAL|SQLITE_SYNC_FULL) );
    rc = sqlite3OsSync(p->pFd, p->syncFlags & SQLITE_SYNC_MASK);
    if( iAmt==0 || rc ) return rc;
  }
  rc = sqlite3OsWrite(p->pFd, pContent, iAmt, iOffset);
  return rc;
}
