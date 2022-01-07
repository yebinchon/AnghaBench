
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_9__ {int end; int p; } ;
typedef TYPE_1__* STREAM ;


 int RDP_PDU_DATA ;
 int SEC_ENCRYPT ;
 scalar_t__ g_encryption ;
 int g_mcs_userid ;
 int g_rdp_shareid ;
 int out_uint16 (TYPE_1__*,int ) ;
 int out_uint16_le (TYPE_1__*,int) ;
 int out_uint32_le (TYPE_1__*,int ) ;
 int out_uint8 (TYPE_1__*,int) ;
 int rdp_hdr ;
 int s_pop_layer (TYPE_1__*,int ) ;
 int sec_send (TYPE_1__*,int ) ;

__attribute__((used)) static void
rdp_send_data(STREAM s, uint8 data_pdu_type)
{
 uint16 length;

 s_pop_layer(s, rdp_hdr);
 length = s->end - s->p;

 out_uint16_le(s, length);
 out_uint16_le(s, (RDP_PDU_DATA | 0x10));
 out_uint16_le(s, (g_mcs_userid + 1001));

 out_uint32_le(s, g_rdp_shareid);
 out_uint8(s, 0);
 out_uint8(s, 1);
 out_uint16_le(s, (length - 14));
 out_uint8(s, data_pdu_type);
 out_uint8(s, 0);
 out_uint16(s, 0);

 sec_send(s, g_encryption ? SEC_ENCRYPT : 0);
}
