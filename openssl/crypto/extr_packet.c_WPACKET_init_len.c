
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxsize; int * buf; int * staticbuf; } ;
typedef TYPE_1__ WPACKET ;
typedef int BUF_MEM ;


 int maxmaxsize (size_t) ;
 int ossl_assert (int ) ;
 int wpacket_intern_init_len (TYPE_1__*,size_t) ;

int WPACKET_init_len(WPACKET *pkt, BUF_MEM *buf, size_t lenbytes)
{

    if (!ossl_assert(buf != ((void*)0)))
        return 0;

    pkt->staticbuf = ((void*)0);
    pkt->buf = buf;
    pkt->maxsize = maxmaxsize(lenbytes);

    return wpacket_intern_init_len(pkt, lenbytes);
}
