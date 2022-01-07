
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int STREAM ;


 int DEBUG (char*) ;
 int RDP_CTL_COOPERATE ;
 int RDP_CTL_REQUEST_CONTROL ;
 int RDP_INPUT_SYNCHRONIZE ;
 scalar_t__ RDP_V5 ;
 scalar_t__ g_numlock_sync ;
 int g_rdp_shareid ;
 scalar_t__ g_rdp_version ;
 int in_uint16_le (int ,int ) ;
 int in_uint32_le (int ,int ) ;
 int in_uint8s (int ,int ) ;
 int rdp_enum_bmpcache2 () ;
 int rdp_process_server_caps (int ,int ) ;
 int rdp_recv (int *) ;
 int rdp_send_confirm_active () ;
 int rdp_send_control (int ) ;
 int rdp_send_fonts (int) ;
 int rdp_send_input (int ,int ,int ,int ,int ) ;
 int rdp_send_synchronise () ;
 int read_keyboard_state () ;
 int reset_order_state () ;
 int ui_get_numlock_state (int ) ;

__attribute__((used)) static void
process_demand_active(STREAM s)
{
 uint8 type;
 uint16 len_src_descriptor, len_combined_caps;

 in_uint32_le(s, g_rdp_shareid);
 in_uint16_le(s, len_src_descriptor);
 in_uint16_le(s, len_combined_caps);
 in_uint8s(s, len_src_descriptor);

 DEBUG(("DEMAND_ACTIVE(id=0x%x)\n", g_rdp_shareid));
 rdp_process_server_caps(s, len_combined_caps);

 rdp_send_confirm_active();
 rdp_send_synchronise();
 rdp_send_control(RDP_CTL_COOPERATE);
 rdp_send_control(RDP_CTL_REQUEST_CONTROL);
 rdp_recv(&type);
 rdp_recv(&type);
 rdp_recv(&type);
 rdp_send_input(0, RDP_INPUT_SYNCHRONIZE, 0,
         g_numlock_sync ? ui_get_numlock_state(read_keyboard_state()) : 0, 0);

 if (g_rdp_version >= RDP_V5)
 {
  rdp_enum_bmpcache2();
  rdp_send_fonts(3);
 }
 else
 {
  rdp_send_fonts(1);
  rdp_send_fonts(2);
 }

 rdp_recv(&type);
 reset_order_state();
}
