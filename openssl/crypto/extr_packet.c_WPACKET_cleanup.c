
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; } ;
typedef TYPE_1__ WPACKET_SUB ;
struct TYPE_6__ {TYPE_1__* subs; } ;
typedef TYPE_2__ WPACKET ;


 int OPENSSL_free (TYPE_1__*) ;

void WPACKET_cleanup(WPACKET *pkt)
{
    WPACKET_SUB *sub, *parent;

    for (sub = pkt->subs; sub != ((void*)0); sub = parent) {
        parent = sub->parent;
        OPENSSL_free(sub);
    }
    pkt->subs = ((void*)0);
}
