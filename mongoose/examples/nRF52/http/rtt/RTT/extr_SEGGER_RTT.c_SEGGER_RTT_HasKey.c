
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* aDown; } ;
struct TYPE_3__ {int RdOff; int WrOff; } ;


 int _Init () ;
 TYPE_2__ _SEGGER_RTT ;

int SEGGER_RTT_HasKey(void) {
  int RdOff;

  _Init();
  RdOff = _SEGGER_RTT.aDown[0].RdOff;
  if (RdOff != _SEGGER_RTT.aDown[0].WrOff) {
    return 1;
  }
  return 0;
}
