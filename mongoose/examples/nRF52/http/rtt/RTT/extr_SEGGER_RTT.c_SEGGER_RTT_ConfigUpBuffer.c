
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* aUp; scalar_t__ MaxNumUpBuffers; } ;
struct TYPE_3__ {char const* sName; char* pBuffer; int SizeOfBuffer; int Flags; scalar_t__ WrOff; scalar_t__ RdOff; } ;


 int SEGGER_RTT_LOCK () ;
 int SEGGER_RTT_UNLOCK () ;
 int _Init () ;
 TYPE_2__ _SEGGER_RTT ;

int SEGGER_RTT_ConfigUpBuffer(unsigned BufferIndex, const char* sName, char* pBuffer, int BufferSize, int Flags) {
  _Init();
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    SEGGER_RTT_LOCK();
    if (BufferIndex > 0) {
      _SEGGER_RTT.aUp[BufferIndex].sName = sName;
      _SEGGER_RTT.aUp[BufferIndex].pBuffer = pBuffer;
      _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer = BufferSize;
      _SEGGER_RTT.aUp[BufferIndex].RdOff = 0;
      _SEGGER_RTT.aUp[BufferIndex].WrOff = 0;
    }
    _SEGGER_RTT.aUp[BufferIndex].Flags = Flags;
    SEGGER_RTT_UNLOCK();
    return 0;
  }
  return -1;
}
