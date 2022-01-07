
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int curr; } ;
typedef TYPE_1__ WPACKET ;


 unsigned char* GETBUF (TYPE_1__*) ;

unsigned char *WPACKET_get_curr(WPACKET *pkt)
{
    unsigned char *buf = GETBUF(pkt);

    if (buf == ((void*)0))
        return ((void*)0);

    return buf + pkt->curr;
}
