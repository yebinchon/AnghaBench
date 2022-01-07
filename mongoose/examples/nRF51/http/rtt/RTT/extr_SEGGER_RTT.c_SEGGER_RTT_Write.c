
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* aUp; } ;
struct TYPE_3__ {int Flags; int RdOff; int WrOff; int SizeOfBuffer; scalar_t__ pBuffer; } ;


 int MEMCPY (scalar_t__,char const*,int) ;
 int MIN (int,int) ;
 int SEGGER_RTT_LOCK () ;
 int SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL ;
 int SEGGER_RTT_MODE_MASK ;
 int SEGGER_RTT_MODE_NO_BLOCK_SKIP ;
 int SEGGER_RTT_UNLOCK () ;
 int _Init () ;
 TYPE_2__ _SEGGER_RTT ;

int SEGGER_RTT_Write(unsigned BufferIndex, const char* pBuffer, unsigned NumBytes) {
  int NumBytesToWrite;
  unsigned NumBytesWritten;
  int RdOff;




  SEGGER_RTT_LOCK();
  _Init();




  if ((_SEGGER_RTT.aUp[BufferIndex].Flags & SEGGER_RTT_MODE_MASK) != SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL) {
    RdOff = _SEGGER_RTT.aUp[BufferIndex].RdOff;
    NumBytesToWrite = RdOff - _SEGGER_RTT.aUp[BufferIndex].WrOff - 1;
    if (NumBytesToWrite < 0) {
      NumBytesToWrite += _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer;
    }



    if ((int)NumBytes > NumBytesToWrite) {
      if ((_SEGGER_RTT.aUp[BufferIndex].Flags & SEGGER_RTT_MODE_MASK) == SEGGER_RTT_MODE_NO_BLOCK_SKIP) {
        SEGGER_RTT_UNLOCK();
        return 0;
      } else {
        NumBytes = NumBytesToWrite;
      }
    }
  }



  if (NumBytes == 0) {
    SEGGER_RTT_UNLOCK();
    return 0;
  }



  NumBytesWritten = 0;
  do {
    RdOff = _SEGGER_RTT.aUp[BufferIndex].RdOff;
    NumBytesToWrite = RdOff - _SEGGER_RTT.aUp[BufferIndex].WrOff - 1;
    if (NumBytesToWrite < 0) {
      NumBytesToWrite += _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer;
    }
    NumBytesToWrite = MIN(NumBytesToWrite, (_SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer - _SEGGER_RTT.aUp[BufferIndex].WrOff));
    NumBytesToWrite = MIN(NumBytesToWrite, (int)NumBytes);
    MEMCPY(_SEGGER_RTT.aUp[BufferIndex].pBuffer + _SEGGER_RTT.aUp[BufferIndex].WrOff, pBuffer, NumBytesToWrite);
    NumBytesWritten += NumBytesToWrite;
    pBuffer += NumBytesToWrite;
    NumBytes -= NumBytesToWrite;
    _SEGGER_RTT.aUp[BufferIndex].WrOff += NumBytesToWrite;
    if (_SEGGER_RTT.aUp[BufferIndex].WrOff == _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer) {
      _SEGGER_RTT.aUp[BufferIndex].WrOff = 0;
    }
  } while (NumBytes);
  SEGGER_RTT_UNLOCK();
  return NumBytesWritten;
}
