
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;


 int RDP_DATA_PDU_FONT2 ;
 int out_uint16 (int ,int ) ;
 int out_uint16_le (int ,int) ;
 int rdp_init_data (int) ;
 int rdp_send_data (int ,int ) ;
 int s_mark_end (int ) ;

__attribute__((used)) static void
rdp_send_fonts(uint16 seq)
{
 STREAM s;

 s = rdp_init_data(8);

 out_uint16(s, 0);
 out_uint16_le(s, 0);
 out_uint16_le(s, seq);
 out_uint16_le(s, 0x32);

 s_mark_end(s);
 rdp_send_data(s, RDP_DATA_PDU_FONT2);
}
