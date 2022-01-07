
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;


 int MOUSE_FLAG_BUTTON1 ;
 int MOUSE_FLAG_BUTTON2 ;
 int MOUSE_FLAG_BUTTON3 ;
 int MOUSE_FLAG_BUTTON4 ;
 int MOUSE_FLAG_BUTTON5 ;
 int MOUSE_FLAG_DOWN ;
 int RDP_INPUT_MOUSE ;
 int rdp_send_input (int ,int ,int ,int ,int ) ;

void
ui_mouse_button(int button, int x, int y, int down)
{
  uint16 flags;

  flags = 0;
  if (down)
  {
    flags |= MOUSE_FLAG_DOWN;
  }
  switch (button)
  {
    case 1:
      flags |= MOUSE_FLAG_BUTTON1;
      break;
    case 2:
      flags |= MOUSE_FLAG_BUTTON2;
      break;
    case 3:
      flags |= MOUSE_FLAG_BUTTON3;
      break;
    case 4:
      flags |= MOUSE_FLAG_BUTTON4;
      break;
    case 5:
      flags |= MOUSE_FLAG_BUTTON5;
      break;
  }
  rdp_send_input(0, RDP_INPUT_MOUSE, flags, (uint16) x, (uint16) y);
}
