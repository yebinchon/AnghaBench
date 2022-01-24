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
struct TYPE_4__ {TYPE_1__* aDown; } ;
struct TYPE_3__ {int RdOff; int WrOff; int SizeOfBuffer; scalar_t__ pBuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ _SEGGER_RTT ; 

int FUNC5(unsigned BufferIndex, char* pBuffer, unsigned BufferSize) {
  int NumBytesRem;
  unsigned NumBytesRead;
  int RdOff;
  int WrOff;

  FUNC2();
  FUNC4();
  RdOff = _SEGGER_RTT.aDown[BufferIndex].RdOff;
  WrOff = _SEGGER_RTT.aDown[BufferIndex].WrOff;
  NumBytesRead = 0;
  //
  // Read from current read position to wrap-around of buffer, first
  //
  if (RdOff > WrOff) {
    NumBytesRem = _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer - RdOff;
    NumBytesRem = FUNC1(NumBytesRem, (int)BufferSize);
    FUNC0(pBuffer, _SEGGER_RTT.aDown[BufferIndex].pBuffer + RdOff, NumBytesRem);
    NumBytesRead += NumBytesRem;
    pBuffer      += NumBytesRem;
    BufferSize   -= NumBytesRem;
    RdOff        += NumBytesRem;
    //
    // Handle wrap-around of buffer
    //
    if (RdOff == _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer) {
      RdOff = 0;
    }
  }
  //
  // Read remaining items of buffer
  //
  NumBytesRem = WrOff - RdOff;
  NumBytesRem = FUNC1(NumBytesRem, (int)BufferSize);
  if (NumBytesRem > 0) {
    FUNC0(pBuffer, _SEGGER_RTT.aDown[BufferIndex].pBuffer + RdOff, NumBytesRem);
    NumBytesRead += NumBytesRem;
    pBuffer      += NumBytesRem;
    BufferSize   -= NumBytesRem;
    RdOff        += NumBytesRem;
  }
  if (NumBytesRead) {
    _SEGGER_RTT.aDown[BufferIndex].RdOff = RdOff;
  }
  FUNC3();
  return NumBytesRead;
}