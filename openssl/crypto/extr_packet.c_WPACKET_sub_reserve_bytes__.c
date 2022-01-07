
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;


 int WPACKET_reserve_bytes (int *,size_t,unsigned char**) ;

int WPACKET_sub_reserve_bytes__(WPACKET *pkt, size_t len,
                                unsigned char **allocbytes, size_t lenbytes)
{
    if (!WPACKET_reserve_bytes(pkt, lenbytes + len, allocbytes))
        return 0;

    if (*allocbytes != ((void*)0))
        *allocbytes += lenbytes;

    return 1;
}
