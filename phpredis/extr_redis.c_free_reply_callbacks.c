
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ fold_item ;
struct TYPE_6__ {int * current; TYPE_1__* head; } ;
typedef TYPE_2__ RedisSock ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_reply_callbacks(RedisSock *redis_sock)
{
    fold_item *fi;

    for (fi = redis_sock->head; fi; ) {
        fold_item *fi_next = fi->next;
        free(fi);
        fi = fi_next;
    }
    redis_sock->head = ((void*)0);
    redis_sock->current = ((void*)0);
}
