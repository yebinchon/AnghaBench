
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* aDown; } ;
struct TYPE_3__ {int RdOff; int WrOff; int SizeOfBuffer; scalar_t__ pBuffer; } ;


 int MEMCPY (char*,scalar_t__,int) ;
 int MIN (int,int) ;
 int SEGGER_RTT_LOCK () ;
 int SEGGER_RTT_UNLOCK () ;
 int _Init () ;
 TYPE_2__ _SEGGER_RTT ;

int SEGGER_RTT_Read(unsigned BufferIndex, char* pBuffer, unsigned BufferSize) {
  int NumBytesRem;
  unsigned NumBytesRead;
  int RdOff;
  int WrOff;

  SEGGER_RTT_LOCK();
  _Init();
  RdOff = _SEGGER_RTT.aDown[BufferIndex].RdOff;
  WrOff = _SEGGER_RTT.aDown[BufferIndex].WrOff;
  NumBytesRead = 0;



  if (RdOff > WrOff) {
    NumBytesRem = _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer - RdOff;
    NumBytesRem = MIN(NumBytesRem, (int)BufferSize);
    MEMCPY(pBuffer, _SEGGER_RTT.aDown[BufferIndex].pBuffer + RdOff, NumBytesRem);
    NumBytesRead += NumBytesRem;
    pBuffer += NumBytesRem;
    BufferSize -= NumBytesRem;
    RdOff += NumBytesRem;



    if (RdOff == _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer) {
      RdOff = 0;
    }
  }



  NumBytesRem = WrOff - RdOff;
  NumBytesRem = MIN(NumBytesRem, (int)BufferSize);
  if (NumBytesRem > 0) {
    MEMCPY(pBuffer, _SEGGER_RTT.aDown[BufferIndex].pBuffer + RdOff, NumBytesRem);
    NumBytesRead += NumBytesRem;
    pBuffer += NumBytesRem;
    BufferSize -= NumBytesRem;
    RdOff += NumBytesRem;
  }
  if (NumBytesRead) {
    _SEGGER_RTT.aDown[BufferIndex].RdOff = RdOff;
  }
  SEGGER_RTT_UNLOCK();
  return NumBytesRead;
}
