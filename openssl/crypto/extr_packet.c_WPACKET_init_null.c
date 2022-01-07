
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxsize; int * buf; int * staticbuf; } ;
typedef TYPE_1__ WPACKET ;


 int maxmaxsize (size_t) ;
 int wpacket_intern_init_len (TYPE_1__*,int ) ;

int WPACKET_init_null(WPACKET *pkt, size_t lenbytes)
{
    pkt->staticbuf = ((void*)0);
    pkt->buf = ((void*)0);
    pkt->maxsize = maxmaxsize(lenbytes);

    return wpacket_intern_init_len(pkt, 0);
}
