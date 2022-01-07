
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;
typedef int BIO ;


 long BIO_get_mem_data (int *,char**) ;
 unsigned int DTLS1_BAD_VER ;
 scalar_t__ DTLS1_RT_HEADER_LENGTH ;
 int PACKET_buf_init (int *,unsigned char*,long) ;
 int PACKET_forward (int *,scalar_t__) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 unsigned int SSL3_MT_CCS ;
 unsigned int SSL3_RT_CHANGE_CIPHER_SPEC ;
 unsigned int SSL3_RT_HANDSHAKE ;

__attribute__((used)) static int validate_ccs(BIO *wbio)
{
    PACKET pkt;
    long len;
    unsigned char *data;
    unsigned int u;

    len = BIO_get_mem_data(wbio, (char **)&data);
    if (!PACKET_buf_init(&pkt, data, len))
        return 0;


    if (!PACKET_get_1(&pkt, &u) || u != SSL3_RT_CHANGE_CIPHER_SPEC)
        return 0;

    if (!PACKET_get_net_2(&pkt, &u) || u != DTLS1_BAD_VER)
        return 0;

    if (!PACKET_forward(&pkt, DTLS1_RT_HEADER_LENGTH - 3))
        return 0;


    if (!PACKET_get_1(&pkt, &u) || u != SSL3_MT_CCS)
        return 0;


    if (!PACKET_get_net_2(&pkt, &u) || u != 0x0002)
        return 0;


    if (!PACKET_get_1(&pkt, &u) || u != SSL3_RT_HANDSHAKE)
        return 0;
    if (!PACKET_get_net_2(&pkt, &u) || u != DTLS1_BAD_VER)
        return 0;


    if (!PACKET_get_net_2(&pkt, &u) || u != 0x0001)
        return 0;







    return 1;
}
