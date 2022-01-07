
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int RDP_CAPLEN_ACTIVATE ;
 int RDP_CAPSET_ACTIVATE ;
 int out_uint16 (int ,int ) ;
 int out_uint16_le (int ,int ) ;

__attribute__((used)) static void
rdp_out_activate_caps(STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_ACTIVATE);
 out_uint16_le(s, RDP_CAPLEN_ACTIVATE);

 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint16(s, 0);
}
