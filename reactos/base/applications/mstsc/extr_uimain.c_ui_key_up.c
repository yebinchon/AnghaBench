
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;


 int RDP_INPUT_SCANCODE ;
 int RDP_KEYRELEASE ;
 int rdp_send_input (int ,int ,int ,int ,int ) ;

void
ui_key_up(int key, int ext)
{
  rdp_send_input(0, RDP_INPUT_SCANCODE, (uint16) (RDP_KEYRELEASE | ext),
                 (uint16) key, 0);
}
