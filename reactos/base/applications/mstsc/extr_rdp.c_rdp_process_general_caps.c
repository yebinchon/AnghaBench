
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;


 int RDP_V4 ;
 int g_rdp_version ;
 int in_uint16_le (int ,int ) ;
 int in_uint8s (int ,int) ;

__attribute__((used)) static void
rdp_process_general_caps(STREAM s)
{
 uint16 pad2octetsB;

 in_uint8s(s, 10);
 in_uint16_le(s, pad2octetsB);

 if (!pad2octetsB)
  g_rdp_version = RDP_V4;
}
