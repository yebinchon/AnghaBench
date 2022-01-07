
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int RDP_CAPLEN_SHARE ;
 int RDP_CAPSET_SHARE ;
 int out_uint16 (int ,int ) ;
 int out_uint16_le (int ,int ) ;

__attribute__((used)) static void
rdp_out_share_caps(STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_SHARE);
 out_uint16_le(s, RDP_CAPLEN_SHARE);

 out_uint16(s, 0);
 out_uint16(s, 0);
}
