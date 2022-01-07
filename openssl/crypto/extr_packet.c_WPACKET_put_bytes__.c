
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;


 int WPACKET_allocate_bytes (int *,size_t,unsigned char**) ;
 int ossl_assert (int) ;
 int put_value (unsigned char*,unsigned int,size_t) ;

int WPACKET_put_bytes__(WPACKET *pkt, unsigned int val, size_t size)
{
    unsigned char *data;


    if (!ossl_assert(size <= sizeof(unsigned int))
            || !WPACKET_allocate_bytes(pkt, size, &data)
            || !put_value(data, val, size))
        return 0;

    return 1;
}
