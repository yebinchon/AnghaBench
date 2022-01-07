
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int RDP_CAPLEN_GENERAL ;
 int RDP_CAPSET_GENERAL ;
 scalar_t__ RDP_V5 ;
 scalar_t__ g_rdp_version ;
 int out_uint16 (int ,int ) ;
 int out_uint16_le (int ,int) ;

__attribute__((used)) static void
rdp_out_general_caps(STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_GENERAL);
 out_uint16_le(s, RDP_CAPLEN_GENERAL);

 out_uint16_le(s, 1);
 out_uint16_le(s, 3);
 out_uint16_le(s, 0x200);
 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint16_le(s, (g_rdp_version >= RDP_V5) ? 0x40d : 0);







 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint16(s, 0);
}
