
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



unsigned
memcached_udp_set_cookie(unsigned char *px, size_t length, uint64_t seqno)
{
    if (length < 2)
        return 0;

    px[0] = (unsigned char)(seqno >> 8);
    px[1] = (unsigned char)(seqno >> 0);


    return 0;
}
