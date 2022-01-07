
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;


 int WPACKET_allocate_bytes (int *,size_t,unsigned char**) ;
 int memset (unsigned char*,int,size_t) ;

int WPACKET_memset(WPACKET *pkt, int ch, size_t len)
{
    unsigned char *dest;

    if (len == 0)
        return 1;

    if (!WPACKET_allocate_bytes(pkt, len, &dest))
        return 0;

    if (dest != ((void*)0))
        memset(dest, ch, len);

    return 1;
}
