
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int i64 ;
typedef int aFrame ;
struct TYPE_5__ {void** aFrameCksum; } ;
struct TYPE_6__ {int szPage; int iReCksum; int pWalFd; TYPE_1__ hdr; } ;
typedef TYPE_2__ Wal ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int WAL_FRAME_HDRSIZE ;
 int assert (int) ;
 void* sqlite3Get4byte (int *) ;
 int sqlite3OsRead (int ,int *,int const,int) ;
 int sqlite3OsWrite (int ,int *,int,int) ;
 int sqlite3_free (int *) ;
 int * sqlite3_malloc (int const) ;
 int walEncodeFrame (TYPE_2__*,int,int,int *,int *) ;
 int walFrameOffset (int,int const) ;

__attribute__((used)) static int walRewriteChecksums(Wal *pWal, u32 iLast){
  const int szPage = pWal->szPage;
  int rc = SQLITE_OK;
  u8 *aBuf;
  u8 aFrame[WAL_FRAME_HDRSIZE];
  u32 iRead;
  i64 iCksumOff;

  aBuf = sqlite3_malloc(szPage + WAL_FRAME_HDRSIZE);
  if( aBuf==0 ) return SQLITE_NOMEM_BKPT;






  assert( pWal->iReCksum>0 );
  if( pWal->iReCksum==1 ){
    iCksumOff = 24;
  }else{
    iCksumOff = walFrameOffset(pWal->iReCksum-1, szPage) + 16;
  }
  rc = sqlite3OsRead(pWal->pWalFd, aBuf, sizeof(u32)*2, iCksumOff);
  pWal->hdr.aFrameCksum[0] = sqlite3Get4byte(aBuf);
  pWal->hdr.aFrameCksum[1] = sqlite3Get4byte(&aBuf[sizeof(u32)]);

  iRead = pWal->iReCksum;
  pWal->iReCksum = 0;
  for(; rc==SQLITE_OK && iRead<=iLast; iRead++){
    i64 iOff = walFrameOffset(iRead, szPage);
    rc = sqlite3OsRead(pWal->pWalFd, aBuf, szPage+WAL_FRAME_HDRSIZE, iOff);
    if( rc==SQLITE_OK ){
      u32 iPgno, nDbSize;
      iPgno = sqlite3Get4byte(aBuf);
      nDbSize = sqlite3Get4byte(&aBuf[4]);

      walEncodeFrame(pWal, iPgno, nDbSize, &aBuf[WAL_FRAME_HDRSIZE], aFrame);
      rc = sqlite3OsWrite(pWal->pWalFd, aFrame, sizeof(aFrame), iOff);
    }
  }

  sqlite3_free(aBuf);
  return rc;
}
