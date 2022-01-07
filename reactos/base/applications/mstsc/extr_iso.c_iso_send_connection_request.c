
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;


 int ISO_PDU_CR ;
 int RDP_NEG_REQ ;
 scalar_t__ RDP_V5 ;
 scalar_t__ g_negotiate_rdp_protocol ;
 scalar_t__ g_rdp_version ;
 int out_uint16 (int ,int) ;
 int out_uint16_be (int ,int) ;
 int out_uint32 (int ,int ) ;
 int out_uint8 (int ,int) ;
 int out_uint8p (int ,char*,int) ;
 int s_mark_end (int ) ;
 int strlen (char*) ;
 int tcp_init (int) ;
 int tcp_send (int ) ;

__attribute__((used)) static void
iso_send_connection_request(char *username, uint32 neg_proto)
{
 STREAM s;
 int length = 30 + strlen(username);

 if (g_rdp_version >= RDP_V5 && g_negotiate_rdp_protocol)
  length += 8;

 s = tcp_init(length);

 out_uint8(s, 3);
 out_uint8(s, 0);
 out_uint16_be(s, length);

 out_uint8(s, length - 5);
 out_uint8(s, ISO_PDU_CR);
 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint8(s, 0);

 out_uint8p(s, "Cookie: mstshash=", strlen("Cookie: mstshash="));
 out_uint8p(s, username, strlen(username));

 out_uint8(s, 0x0d);
 out_uint8(s, 0x0a);

 if (g_rdp_version >= RDP_V5 && g_negotiate_rdp_protocol)
 {

  out_uint8(s, RDP_NEG_REQ);
  out_uint8(s, 0);
  out_uint16(s, 8);
  out_uint32(s, neg_proto);
 }

 s_mark_end(s);
 tcp_send(s);
}
