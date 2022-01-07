
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t written; TYPE_1__* subs; } ;
typedef TYPE_2__ WPACKET ;
struct TYPE_4__ {size_t pwritten; } ;


 int ossl_assert (int) ;

int WPACKET_get_length(WPACKET *pkt, size_t *len)
{

    if (!ossl_assert(pkt->subs != ((void*)0) && len != ((void*)0)))
        return 0;

    *len = pkt->written - pkt->subs->pwritten;

    return 1;
}
