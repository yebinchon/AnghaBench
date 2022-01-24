#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* aUp; } ;
struct TYPE_3__ {int Flags; int RdOff; int WrOff; int SizeOfBuffer; scalar_t__ pBuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL ; 
 int SEGGER_RTT_MODE_MASK ; 
 int SEGGER_RTT_MODE_NO_BLOCK_SKIP ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ _SEGGER_RTT ; 

int FUNC5(unsigned BufferIndex, const char* pBuffer, unsigned NumBytes) {
  int NumBytesToWrite;
  unsigned NumBytesWritten;
  int RdOff;
  //
  // Target is not allowed to perform other RTT operations while string still has not been stored completely.
  // Otherwise we would probably end up with a mixed string in the buffer.
  //
  FUNC2();
  FUNC4();
  //
  // In case we are not in blocking mode,
  // we need to calculate, how many bytes we can put into the buffer at all.
  //
  if ((_SEGGER_RTT.aUp[BufferIndex].Flags & SEGGER_RTT_MODE_MASK) != SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL) {
    RdOff = _SEGGER_RTT.aUp[BufferIndex].RdOff;
    NumBytesToWrite =  RdOff - _SEGGER_RTT.aUp[BufferIndex].WrOff - 1;
    if (NumBytesToWrite < 0) {
      NumBytesToWrite += _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer;
    }
    //
    // If the complete data does not fit in the buffer, check if we have to skip it completely or trim the data
    //
    if ((int)NumBytes > NumBytesToWrite) {
      if ((_SEGGER_RTT.aUp[BufferIndex].Flags & SEGGER_RTT_MODE_MASK) == SEGGER_RTT_MODE_NO_BLOCK_SKIP) {
        FUNC3();
        return 0;
      } else {
        NumBytes = NumBytesToWrite;
      }
    }
  }
  //
  // Early out if nothing is to do
  //
  if (NumBytes == 0) {
    FUNC3();
    return 0;
  }
  //
  // Write data to buffer and handle wrap-around if necessary
  //
  NumBytesWritten = 0;
  do {
    RdOff = _SEGGER_RTT.aUp[BufferIndex].RdOff;                          // May be changed by host (debug probe) in the meantime
    NumBytesToWrite = RdOff - _SEGGER_RTT.aUp[BufferIndex].WrOff - 1;
    if (NumBytesToWrite < 0) {
      NumBytesToWrite += _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer;
    }
    NumBytesToWrite = FUNC1(NumBytesToWrite, (_SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer - _SEGGER_RTT.aUp[BufferIndex].WrOff));    // Number of bytes that can be written until buffer wrap-around
    NumBytesToWrite = FUNC1(NumBytesToWrite, (int)NumBytes);
    FUNC0(_SEGGER_RTT.aUp[BufferIndex].pBuffer + _SEGGER_RTT.aUp[BufferIndex].WrOff, pBuffer, NumBytesToWrite);
    NumBytesWritten     += NumBytesToWrite;
    pBuffer             += NumBytesToWrite;
    NumBytes            -= NumBytesToWrite;
    _SEGGER_RTT.aUp[BufferIndex].WrOff += NumBytesToWrite;
    if (_SEGGER_RTT.aUp[BufferIndex].WrOff == _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer) {
      _SEGGER_RTT.aUp[BufferIndex].WrOff = 0;
    }
  } while (NumBytes);
  FUNC3();
  return NumBytesWritten;
}