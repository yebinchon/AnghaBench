
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;
typedef int BIGNUM ;


 unsigned int ID_SEQUENCE ;
 int PACKET_buf_init (int *,unsigned char const*,size_t) ;
 unsigned char const* PACKET_data (int *) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int decode_der_integer (int *,int *) ;
 int decode_der_length (int *,int *) ;

size_t decode_der_dsa_sig(BIGNUM *r, BIGNUM *s, const unsigned char **ppin,
                          size_t len)
{
    size_t consumed;
    PACKET pkt, contpkt;
    unsigned int tag;

    if (!PACKET_buf_init(&pkt, *ppin, len)
            || !PACKET_get_1(&pkt, &tag)
            || tag != ID_SEQUENCE
            || !decode_der_length(&pkt, &contpkt)
            || !decode_der_integer(&contpkt, r)
            || !decode_der_integer(&contpkt, s)
            || PACKET_remaining(&contpkt) != 0)
        return 0;

    consumed = PACKET_data(&pkt) - *ppin;
    *ppin += consumed;
    return consumed;
}
