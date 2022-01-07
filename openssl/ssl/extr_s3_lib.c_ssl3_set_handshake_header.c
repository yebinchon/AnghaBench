
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;
typedef int SSL ;


 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 int WPACKET_put_bytes_u8 (int *,int) ;
 int WPACKET_start_sub_packet_u24 (int *) ;

int ssl3_set_handshake_header(SSL *s, WPACKET *pkt, int htype)
{

    if (htype == SSL3_MT_CHANGE_CIPHER_SPEC)
        return 1;


    if (!WPACKET_put_bytes_u8(pkt, htype)
            || !WPACKET_start_sub_packet_u24(pkt))
        return 0;

    return 1;
}
