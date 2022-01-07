
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int RDP_CAPLEN_BRUSHCACHE ;
 int RDP_CAPSET_BRUSHCACHE ;
 int out_uint16_le (int ,int ) ;
 int out_uint32_le (int ,int) ;

__attribute__((used)) static void
rdp_out_brushcache_caps(STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_BRUSHCACHE);
 out_uint16_le(s, RDP_CAPLEN_BRUSHCACHE);
 out_uint32_le(s, 1);
}
