
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_7__ {int end; int p; } ;
typedef TYPE_1__* STREAM ;


 int MCS_SDRQ ;
 int g_mcs_userid ;
 int iso_send (TYPE_1__*) ;
 int mcs_hdr ;
 int out_uint16_be (TYPE_1__*,int) ;
 int out_uint8 (TYPE_1__*,int) ;
 int s_pop_layer (TYPE_1__*,int ) ;

void
mcs_send_to_channel(STREAM s, uint16 channel)
{
 uint16 length;

 s_pop_layer(s, mcs_hdr);
 length = s->end - s->p - 8;
 length |= 0x8000;

 out_uint8(s, (MCS_SDRQ << 2));
 out_uint16_be(s, g_mcs_userid);
 out_uint16_be(s, channel);
 out_uint8(s, 0x70);
 out_uint16_be(s, length);

 iso_send(s);
}
