
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* items; } ;
typedef TYPE_1__ pqueue ;
struct TYPE_6__ {int priority; struct TYPE_6__* next; } ;
typedef TYPE_2__ pitem ;


 scalar_t__ memcmp (int ,unsigned char*,int) ;

pitem *pqueue_find(pqueue *pq, unsigned char *prio64be)
{
    pitem *next;
    pitem *found = ((void*)0);

    if (pq->items == ((void*)0))
        return ((void*)0);

    for (next = pq->items; next->next != ((void*)0); next = next->next) {
        if (memcmp(next->priority, prio64be, 8) == 0) {
            found = next;
            break;
        }
    }


    if (memcmp(next->priority, prio64be, 8) == 0)
        found = next;

    if (!found)
        return ((void*)0);

    return found;
}
