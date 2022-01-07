
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;


 int WPACKET_put_bytes_u16 (int *,size_t) ;
 int WPACKET_put_bytes_u8 (int *,size_t) ;

int encode_der_length(WPACKET *pkt, size_t cont_len)
{
    if (cont_len > 0xffff)
        return 0;

    if (cont_len > 0xff) {
        if (!WPACKET_put_bytes_u8(pkt, 0x82)
                || !WPACKET_put_bytes_u16(pkt, cont_len))
            return 0;
    } else {
        if (cont_len > 0x7f
                && !WPACKET_put_bytes_u8(pkt, 0x81))
            return 0;
        if (!WPACKET_put_bytes_u8(pkt, cont_len))
            return 0;
    }

    return 1;
}
