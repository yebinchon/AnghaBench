
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;
typedef int BIGNUM ;


 int BN_bn2binpad (int const*,unsigned char*,int) ;
 scalar_t__ BN_is_negative (int const*) ;
 int BN_num_bits (int const*) ;
 int ID_INTEGER ;
 int WPACKET_allocate_bytes (int *,size_t,unsigned char**) ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_start_sub_packet (int *) ;
 int encode_der_length (int *,size_t) ;

int encode_der_integer(WPACKET *pkt, const BIGNUM *n)
{
    unsigned char *bnbytes;
    size_t cont_len;

    if (BN_is_negative(n))
        return 0;
    cont_len = BN_num_bits(n) / 8 + 1;

    if (!WPACKET_start_sub_packet(pkt)
            || !WPACKET_put_bytes_u8(pkt, ID_INTEGER)
            || !encode_der_length(pkt, cont_len)
            || !WPACKET_allocate_bytes(pkt, cont_len, &bnbytes)
            || !WPACKET_close(pkt))
        return 0;

    if (bnbytes != ((void*)0)
            && BN_bn2binpad(n, bnbytes, (int)cont_len) != (int)cont_len)
        return 0;

    return 1;
}
