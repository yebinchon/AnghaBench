
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEGGER_RTT_Read (int ,char*,int) ;

int SEGGER_RTT_GetKey(void) {
  char c;
  int r;

  r = SEGGER_RTT_Read(0, &c, 1);
  if (r == 1) {
    return (int)(unsigned char)c;
  }
  return -1;
}
