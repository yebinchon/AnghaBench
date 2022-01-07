
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ XLogSegNo ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_11__ {scalar_t__ ws_segno; scalar_t__ ws_off; } ;
struct TYPE_10__ {int ws_segsize; } ;
struct TYPE_12__ {int readLen; int (* read_page ) (TYPE_3__*,scalar_t__,scalar_t__,int ,char*) ;char* readBuf; TYPE_2__ seg; int currRecPtr; TYPE_1__ segcxt; } ;
typedef TYPE_3__ XLogReaderState ;
typedef scalar_t__ XLogPageHeader ;


 int Assert (int) ;
 scalar_t__ Max (int,int) ;
 int SizeOfXLogShortPHD ;
 int XLByteToSeg (scalar_t__,scalar_t__,int ) ;
 scalar_t__ XLOG_BLCKSZ ;
 int XLogPageHeaderSize (scalar_t__) ;
 int XLogReaderInvalReadState (TYPE_3__*) ;
 int XLogReaderValidatePageHeader (TYPE_3__*,scalar_t__,char*) ;
 scalar_t__ XLogSegmentOffset (scalar_t__,int ) ;
 int stub1 (TYPE_3__*,scalar_t__,scalar_t__,int ,char*) ;
 int stub2 (TYPE_3__*,scalar_t__,scalar_t__,int ,char*) ;
 int stub3 (TYPE_3__*,scalar_t__,int,int ,char*) ;

__attribute__((used)) static int
ReadPageInternal(XLogReaderState *state, XLogRecPtr pageptr, int reqLen)
{
 int readLen;
 uint32 targetPageOff;
 XLogSegNo targetSegNo;
 XLogPageHeader hdr;

 Assert((pageptr % XLOG_BLCKSZ) == 0);

 XLByteToSeg(pageptr, targetSegNo, state->segcxt.ws_segsize);
 targetPageOff = XLogSegmentOffset(pageptr, state->segcxt.ws_segsize);


 if (targetSegNo == state->seg.ws_segno &&
  targetPageOff == state->seg.ws_off && reqLen <= state->readLen)
  return state->readLen;
 if (targetSegNo != state->seg.ws_segno && targetPageOff != 0)
 {
  XLogRecPtr targetSegmentPtr = pageptr - targetPageOff;

  readLen = state->read_page(state, targetSegmentPtr, XLOG_BLCKSZ,
           state->currRecPtr,
           state->readBuf);
  if (readLen < 0)
   goto err;


  Assert(readLen == XLOG_BLCKSZ);

  if (!XLogReaderValidatePageHeader(state, targetSegmentPtr,
            state->readBuf))
   goto err;
 }





 readLen = state->read_page(state, pageptr, Max(reqLen, SizeOfXLogShortPHD),
          state->currRecPtr,
          state->readBuf);
 if (readLen < 0)
  goto err;

 Assert(readLen <= XLOG_BLCKSZ);


 if (readLen <= SizeOfXLogShortPHD)
  goto err;

 Assert(readLen >= reqLen);

 hdr = (XLogPageHeader) state->readBuf;


 if (readLen < XLogPageHeaderSize(hdr))
 {
  readLen = state->read_page(state, pageptr, XLogPageHeaderSize(hdr),
           state->currRecPtr,
           state->readBuf);
  if (readLen < 0)
   goto err;
 }




 if (!XLogReaderValidatePageHeader(state, pageptr, (char *) hdr))
  goto err;


 state->seg.ws_segno = targetSegNo;
 state->seg.ws_off = targetPageOff;
 state->readLen = readLen;

 return readLen;

err:
 XLogReaderInvalReadState(state);
 return -1;
}
