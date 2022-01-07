
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;


 int RDP_INPUT_SYNCHRONIZE ;
 int rdp_send_input (int ,int ,int ,int ,int ) ;

void
ui_set_modifier_state(int code)

{



  rdp_send_input(0, RDP_INPUT_SYNCHRONIZE, 0, (uint16) code, 0);

}
