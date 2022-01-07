
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ used; int * tail; int current; int head; } ;
typedef TYPE_1__ BN_POOL ;



__attribute__((used)) static void BN_POOL_init(BN_POOL *p)
{
    p->head = p->current = p->tail = ((void*)0);
    p->used = p->size = 0;
}
