
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_7__ {TYPE_1__* d1; } ;
struct TYPE_6__ {int handshake_write_seq; int next_handshake_write_seq; } ;
typedef TYPE_2__ SSL ;


 int DTLS1_HM_HEADER_LENGTH ;
 int SSL3_MT_CCS ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 int WPACKET_allocate_bytes (int *,int ,unsigned char**) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_start_sub_packet (int *) ;
 int dtls1_set_message_header (TYPE_2__*,int,int ,int ,int ) ;
 int dtls1_set_message_header_int (TYPE_2__*,int ,int ,int ,int ,int ) ;

int dtls1_set_handshake_header(SSL *s, WPACKET *pkt, int htype)
{
    unsigned char *header;

    if (htype == SSL3_MT_CHANGE_CIPHER_SPEC) {
        s->d1->handshake_write_seq = s->d1->next_handshake_write_seq;
        dtls1_set_message_header_int(s, SSL3_MT_CCS, 0,
                                     s->d1->handshake_write_seq, 0, 0);
        if (!WPACKET_put_bytes_u8(pkt, SSL3_MT_CCS))
            return 0;
    } else {
        dtls1_set_message_header(s, htype, 0, 0, 0);




        if (!WPACKET_allocate_bytes(pkt, DTLS1_HM_HEADER_LENGTH, &header)
                || !WPACKET_start_sub_packet(pkt))
            return 0;
    }

    return 1;
}
