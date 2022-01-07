
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int used; TYPE_1__* current; } ;
struct TYPE_4__ {struct TYPE_4__* prev; scalar_t__ vals; } ;
typedef TYPE_2__ BN_POOL ;


 int BN_CTX_POOL_SIZE ;
 int bn_check_top (scalar_t__) ;

__attribute__((used)) static void BN_POOL_release(BN_POOL *p, unsigned int num)
{
    unsigned int offset = (p->used - 1) % BN_CTX_POOL_SIZE;

    p->used -= num;
    while (num--) {
        bn_check_top(p->current->vals + offset);
        if (offset == 0) {
            offset = BN_CTX_POOL_SIZE - 1;
            p->current = p->current->prev;
        } else
            offset--;
    }
}
