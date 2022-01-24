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
struct TYPE_4__ {TYPE_1__* aDown; scalar_t__ MaxNumDownBuffers; } ;
struct TYPE_3__ {char const* sName; char* pBuffer; int SizeOfBuffer; int Flags; scalar_t__ WrOff; scalar_t__ RdOff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ _SEGGER_RTT ; 

int FUNC3(unsigned BufferIndex, const char* sName, char* pBuffer, int BufferSize, int Flags) {
  FUNC2();
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    FUNC0();
    if (BufferIndex > 0) {
      _SEGGER_RTT.aDown[BufferIndex].sName        = sName;
      _SEGGER_RTT.aDown[BufferIndex].pBuffer      = pBuffer;
      _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer = BufferSize;
      _SEGGER_RTT.aDown[BufferIndex].RdOff        = 0;
      _SEGGER_RTT.aDown[BufferIndex].WrOff        = 0;
    }
    _SEGGER_RTT.aDown[BufferIndex].Flags          = Flags;
    FUNC1();
    return 0;
  }
  return -1;
}