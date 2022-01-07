
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int RDP_CAPLEN_BITMAP ;
 int RDP_CAPSET_BITMAP ;
 scalar_t__ g_bitmap_compression ;
 int g_server_depth ;
 int out_uint16 (int ,int) ;
 int out_uint16_le (int ,int) ;

__attribute__((used)) static void
rdp_out_bitmap_caps(STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_BITMAP);
 out_uint16_le(s, RDP_CAPLEN_BITMAP);

 out_uint16_le(s, g_server_depth);
 out_uint16_le(s, 1);
 out_uint16_le(s, 1);
 out_uint16_le(s, 1);
 out_uint16_le(s, 800);
 out_uint16_le(s, 600);
 out_uint16(s, 0);
 out_uint16(s, 1);
 out_uint16_le(s, g_bitmap_compression ? 1 : 0);
 out_uint16(s, 0);
 out_uint16_le(s, 1);
 out_uint16(s, 0);
}
