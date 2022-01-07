
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int RDP_DATA_PDU_CLIENT_WINDOW_STATUS ;
 int g_height ;
 int g_width ;
 int out_uint16_le (int ,int ) ;
 int out_uint32_le (int ,int) ;
 int rdp_init_data (int) ;
 int rdp_send_data (int ,int ) ;
 int s_mark_end (int ) ;

void
rdp_send_client_window_status(int status)
{
 STREAM s;
 static int current_status = 1;

 if (current_status == status)
  return;

 s = rdp_init_data(12);

 out_uint32_le(s, status);

 switch (status)
 {
  case 0:
   break;

  case 1:
   out_uint32_le(s, 0);
   out_uint16_le(s, g_width);
   out_uint16_le(s, g_height);
   break;
 }

 s_mark_end(s);
 rdp_send_data(s, RDP_DATA_PDU_CLIENT_WINDOW_STATUS);
 current_status = status;
}
