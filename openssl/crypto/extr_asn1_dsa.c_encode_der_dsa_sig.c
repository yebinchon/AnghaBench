
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;
typedef int BIGNUM ;


 int ID_SEQUENCE ;
 int WPACKET_cleanup (int *) ;
 int WPACKET_close (int *) ;
 int WPACKET_finish (int *) ;
 int WPACKET_get_length (int *,size_t*) ;
 int WPACKET_init_null (int *,int ) ;
 int WPACKET_is_null_buf (int *) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;
 int WPACKET_start_sub_packet (int *) ;
 int encode_der_integer (int *,int const*) ;
 int encode_der_length (int *,size_t) ;

int encode_der_dsa_sig(WPACKET *pkt, const BIGNUM *r, const BIGNUM *s)
{
    WPACKET tmppkt, *dummypkt;
    size_t cont_len;
    int isnull = WPACKET_is_null_buf(pkt);

    if (!WPACKET_start_sub_packet(pkt))
        return 0;

    if (!isnull) {
        if (!WPACKET_init_null(&tmppkt, 0))
            return 0;
        dummypkt = &tmppkt;
    } else {

        dummypkt = pkt;
    }


    if (!encode_der_integer(dummypkt, r)
            || !encode_der_integer(dummypkt, s)
            || !WPACKET_get_length(dummypkt, &cont_len)
            || (!isnull && !WPACKET_finish(dummypkt))) {
        if (!isnull)
            WPACKET_cleanup(dummypkt);
        return 0;
    }


    if (!WPACKET_put_bytes_u8(pkt, ID_SEQUENCE)
            || !encode_der_length(pkt, cont_len)




            || (!isnull && !encode_der_integer(pkt, r))
            || (!isnull && !encode_der_integer(pkt, s))
            || !WPACKET_close(pkt))
        return 0;

    return 1;
}
