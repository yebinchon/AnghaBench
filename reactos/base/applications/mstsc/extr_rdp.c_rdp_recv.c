
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_7__ {int * p; int * end; } ;
typedef TYPE_1__* STREAM ;


 int DEBUG (char*) ;
 int * g_next_packet ;
 int g_packetno ;
 int hexdump (int *,int) ;
 int in_uint16_le (TYPE_1__*,int) ;
 int in_uint8s (TYPE_1__*,int) ;
 int rdp5_process (TYPE_1__*) ;
 TYPE_1__* sec_recv (int*) ;

__attribute__((used)) static STREAM
rdp_recv(uint8 * type)
{
 static STREAM rdp_s;
 uint16 length, pdu_type;
 uint8 rdpver;

 if ((rdp_s == ((void*)0)) || (g_next_packet >= rdp_s->end) || (g_next_packet == ((void*)0)))
 {
  rdp_s = sec_recv(&rdpver);
  if (rdp_s == ((void*)0))
   return ((void*)0);
  if (rdpver == 0xff)
  {
   g_next_packet = rdp_s->end;
   *type = 0;
   return rdp_s;
  }
  else if (rdpver != 3)
  {

   rdp5_process(rdp_s);
   *type = 0;
   return rdp_s;
  }

  g_next_packet = rdp_s->p;
 }
 else
 {
  rdp_s->p = g_next_packet;
 }

 in_uint16_le(rdp_s, length);

 if (length == 0x8000)
 {
  g_next_packet += 8;
  *type = 0;
  return rdp_s;
 }
 in_uint16_le(rdp_s, pdu_type);
 in_uint8s(rdp_s, 2);
 *type = pdu_type & 0xf;






 g_next_packet += length;
 return rdp_s;
}
