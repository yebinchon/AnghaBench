
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int RDP_CAPLEN_NEWPOINTER ;
 int RDP_CAPSET_POINTER ;
 int out_uint16_le (int ,int) ;

__attribute__((used)) static void
rdp_out_newpointer_caps(STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_POINTER);
 out_uint16_le(s, RDP_CAPLEN_NEWPOINTER);

 out_uint16_le(s, 1);
 out_uint16_le(s, 20);
 out_uint16_le(s, 20);
}
