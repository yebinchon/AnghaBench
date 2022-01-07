
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEGGER_RTT_Write (int ,char*,int) ;
 int SEGGER_RTT_WriteString (int ,char const*) ;
 int _ActiveTerminal ;

int SEGGER_RTT_TerminalOut (char TerminalId, const char* s) {
  char ac[2];
  int r;

  ac[0] = 0xFF;
  if (TerminalId < 10) {
    ac[1] = '0' + TerminalId;
  } else if (TerminalId < 16) {
    ac[1] = 'A' + (TerminalId - 0x0A);
  } else {
    return -1;
  }
  SEGGER_RTT_Write(0, ac, 2);
  r = SEGGER_RTT_WriteString(0, s);
  if (TerminalId < 10) {
    ac[1] = '0' + _ActiveTerminal;
  } else if (TerminalId < 16) {
    ac[1] = 'A' + (_ActiveTerminal - 0x0A);
  }
  SEGGER_RTT_Write(0, ac, 2);
  return r;
}
