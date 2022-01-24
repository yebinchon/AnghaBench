#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int i64 ;
typedef  int /*<<< orphan*/  aFrame ;
struct TYPE_5__ {void** aFrameCksum; } ;
struct TYPE_6__ {int szPage; int iReCksum; int /*<<< orphan*/  pWalFd; TYPE_1__ hdr; } ;
typedef  TYPE_2__ Wal ;

/* Variables and functions */
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int WAL_FRAME_HDRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int const) ; 

__attribute__((used)) static int FUNC8(Wal *pWal, u32 iLast){
  const int szPage = pWal->szPage;/* Database page size */
  int rc = SQLITE_OK;             /* Return code */
  u8 *aBuf;                       /* Buffer to load data from wal file into */
  u8 aFrame[WAL_FRAME_HDRSIZE];   /* Buffer to assemble frame-headers in */
  u32 iRead;                      /* Next frame to read from wal file */
  i64 iCksumOff;

  aBuf = FUNC5(szPage + WAL_FRAME_HDRSIZE);
  if( aBuf==0 ) return SQLITE_NOMEM_BKPT;

  /* Find the checksum values to use as input for the recalculating the
  ** first checksum. If the first frame is frame 1 (implying that the current
  ** transaction restarted the wal file), these values must be read from the
  ** wal-file header. Otherwise, read them from the frame header of the
  ** previous frame.  */
  FUNC0( pWal->iReCksum>0 );
  if( pWal->iReCksum==1 ){
    iCksumOff = 24;
  }else{
    iCksumOff = FUNC7(pWal->iReCksum-1, szPage) + 16;
  }
  rc = FUNC2(pWal->pWalFd, aBuf, sizeof(u32)*2, iCksumOff);
  pWal->hdr.aFrameCksum[0] = FUNC1(aBuf);
  pWal->hdr.aFrameCksum[1] = FUNC1(&aBuf[sizeof(u32)]);

  iRead = pWal->iReCksum;
  pWal->iReCksum = 0;
  for(; rc==SQLITE_OK && iRead<=iLast; iRead++){
    i64 iOff = FUNC7(iRead, szPage);
    rc = FUNC2(pWal->pWalFd, aBuf, szPage+WAL_FRAME_HDRSIZE, iOff);
    if( rc==SQLITE_OK ){
      u32 iPgno, nDbSize;
      iPgno = FUNC1(aBuf);
      nDbSize = FUNC1(&aBuf[4]);

      FUNC6(pWal, iPgno, nDbSize, &aBuf[WAL_FRAME_HDRSIZE], aFrame);
      rc = FUNC3(pWal->pWalFd, aFrame, sizeof(aFrame), iOff);
    }
  }

  FUNC4(aBuf);
  return rc;
}