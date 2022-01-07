
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int * STREAM ;


 int MCS_DPUM ;
 int MCS_SDIN ;
 int error (char*,int) ;
 int in_uint16_be (int *,int ) ;
 int in_uint8 (int *,int) ;
 int in_uint8s (int *,int) ;
 int * iso_recv (int*) ;

STREAM
mcs_recv(uint16 * channel, uint8 * rdpver)
{
 uint8 opcode, appid, length;
 STREAM s;

 s = iso_recv(rdpver);
 if (s == ((void*)0))
  return ((void*)0);
 if (rdpver != ((void*)0))
  if (*rdpver != 3)
   return s;
 in_uint8(s, opcode);
 appid = opcode >> 2;
 if (appid != MCS_SDIN)
 {
  if (appid != MCS_DPUM)
  {
   error("expected data, got %d\n", opcode);
  }
  return ((void*)0);
 }
 in_uint8s(s, 2);
 in_uint16_be(s, *channel);
 in_uint8s(s, 1);
 in_uint8(s, length);
 if (length & 0x80)
  in_uint8s(s, 1);
 return s;
}
