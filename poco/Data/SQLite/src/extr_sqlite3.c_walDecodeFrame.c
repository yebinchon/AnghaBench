
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ bigEndCksum; int aSalt; scalar_t__* aFrameCksum; } ;
struct TYPE_5__ {int szPage; TYPE_1__ hdr; } ;
typedef TYPE_2__ Wal ;


 scalar_t__ SQLITE_BIGENDIAN ;
 int WAL_FRAME_HDRSIZE ;
 int assert (int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 scalar_t__ sqlite3Get4byte (int *) ;
 int walChecksumBytes (int,int *,int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int walDecodeFrame(
  Wal *pWal,
  u32 *piPage,
  u32 *pnTruncate,
  u8 *aData,
  u8 *aFrame
){
  int nativeCksum;
  u32 *aCksum = pWal->hdr.aFrameCksum;
  u32 pgno;
  assert( WAL_FRAME_HDRSIZE==24 );




  if( memcmp(&pWal->hdr.aSalt, &aFrame[8], 8)!=0 ){
    return 0;
  }



  pgno = sqlite3Get4byte(&aFrame[0]);
  if( pgno==0 ){
    return 0;
  }






  nativeCksum = (pWal->hdr.bigEndCksum==SQLITE_BIGENDIAN);
  walChecksumBytes(nativeCksum, aFrame, 8, aCksum, aCksum);
  walChecksumBytes(nativeCksum, aData, pWal->szPage, aCksum, aCksum);
  if( aCksum[0]!=sqlite3Get4byte(&aFrame[16])
   || aCksum[1]!=sqlite3Get4byte(&aFrame[20])
  ){

    return 0;
  }




  *piPage = pgno;
  *pnTruncate = sqlite3Get4byte(&aFrame[4]);
  return 1;
}
