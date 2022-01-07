
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;


 int MOUSE_FLAG_MOVE ;
 int RDP_INPUT_MOUSE ;
 int rdp_send_input (int ,int ,int ,int ,int ) ;

void
ui_mouse_move(int x, int y)
{
  rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_MOVE, (uint16) x, (uint16) y);
}
