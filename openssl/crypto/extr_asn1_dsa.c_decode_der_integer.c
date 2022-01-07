
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;
typedef int BIGNUM ;


 int * BN_bin2bn (int ,int,int *) ;
 unsigned int ID_INTEGER ;
 int PACKET_data (int *) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int decode_der_length (int *,int *) ;

int decode_der_integer(PACKET *pkt, BIGNUM *n)
{
    PACKET contpkt, tmppkt;
    unsigned int tag, tmp;


    if (!PACKET_get_1(pkt, &tag)
            || tag != ID_INTEGER
            || !decode_der_length(pkt, &contpkt))
        return 0;


    tmppkt = contpkt;

    if (!PACKET_get_1(&tmppkt, &tmp)
            || (tmp & 0x80) != 0)
        return 0;

    if (PACKET_remaining(&tmppkt) > 0 && tmp == 0) {
        if (!PACKET_get_1(&tmppkt, &tmp)
                || (tmp & 0x80) == 0)
            return 0;
    }

    if (BN_bin2bn(PACKET_data(&contpkt),
                  (int)PACKET_remaining(&contpkt), n) == ((void*)0))
        return 0;

    return 1;
}
