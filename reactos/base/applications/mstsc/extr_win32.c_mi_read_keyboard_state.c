
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short GetKeyState (int ) ;
 int VK_CAPITAL ;
 int VK_NUMLOCK ;
 int VK_SCROLL ;

int
mi_read_keyboard_state(void)
{
  short keydata;
  int code;

  code = 0;
  keydata = GetKeyState(VK_SCROLL);
  if (keydata & 0x0001)
  {
    code |= 1;
  }
  keydata = GetKeyState(VK_NUMLOCK);
  if (keydata & 0x0001)
  {
    code |= 2;
  }
  keydata = GetKeyState(VK_CAPITAL);
  if (keydata & 0x0001)
  {
    code |= 4;
  }
  return code;
}
