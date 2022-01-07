
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeouts {size_t* pending; int ** wheel; int expired; } ;
struct timeout {int * pending; int tqe; } ;
typedef size_t ptrdiff_t ;


 size_t WHEEL_C (int) ;
 size_t WHEEL_LEN ;
 int list_del_from (int *,int *) ;
 scalar_t__ list_empty (int *) ;

void timeouts_del(struct timeouts *T, struct timeout *to)
{
    if (to->pending) {
        list_del_from(to->pending, &to->tqe);

        if (to->pending != &T->expired && list_empty(to->pending)) {
            ptrdiff_t index = to->pending - &T->wheel[0][0];
            ptrdiff_t wheel = index / WHEEL_LEN;
            ptrdiff_t slot = index % WHEEL_LEN;

            T->pending[wheel] &= ~(WHEEL_C(1) << slot);
        }

        to->pending = ((void*)0);
    }
}
