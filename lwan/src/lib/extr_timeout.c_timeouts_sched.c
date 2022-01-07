
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timeout_t ;
struct timeouts {scalar_t__ curtime; int* pending; int expired; int ** wheel; } ;
struct timeout {int tqe; int * pending; scalar_t__ expires; } ;


 int WHEEL_C (int) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ timeout_rem (struct timeouts*,struct timeout*) ;
 int timeout_slot (int,scalar_t__) ;
 int timeout_wheel (scalar_t__) ;
 int timeouts_del (struct timeouts*,struct timeout*) ;

__attribute__((used)) static void
timeouts_sched(struct timeouts *T, struct timeout *to, timeout_t expires)
{
    timeout_t rem;
    int wheel, slot;

    timeouts_del(T, to);

    to->expires = expires;

    if (expires > T->curtime) {
        rem = timeout_rem(T, to);






        wheel = timeout_wheel(rem);
        slot = timeout_slot(wheel, to->expires);

        to->pending = &T->wheel[wheel][slot];

        T->pending[wheel] |= WHEEL_C(1) << slot;
    } else {
        to->pending = &T->expired;
    }

    list_add_tail(to->pending, &to->tqe);
}
