
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEGGER_RTT_Write (int ,char*,int) ;
 char _ActiveTerminal ;

void SEGGER_RTT_SetTerminal (char TerminalId) {
  char ac[2];

  ac[0] = 0xFF;
  if (TerminalId < 10) {
    ac[1] = '0' + TerminalId;
  } else if (TerminalId < 16) {
    ac[1] = 'A' + (TerminalId - 0x0A);
  } else {
    return;
  }
  _ActiveTerminal = TerminalId;
  SEGGER_RTT_Write(0, ac, 2);
}
