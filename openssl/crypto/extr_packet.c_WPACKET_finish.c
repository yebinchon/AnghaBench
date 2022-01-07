
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* subs; } ;
typedef TYPE_1__ WPACKET ;
struct TYPE_7__ {int * parent; } ;


 int OPENSSL_free (TYPE_3__*) ;
 int wpacket_intern_close (TYPE_1__*,TYPE_3__*,int) ;

int WPACKET_finish(WPACKET *pkt)
{
    int ret;





    if (pkt->subs == ((void*)0) || pkt->subs->parent != ((void*)0))
        return 0;

    ret = wpacket_intern_close(pkt, pkt->subs, 1);
    if (ret) {
        OPENSSL_free(pkt->subs);
        pkt->subs = ((void*)0);
    }

    return ret;
}
