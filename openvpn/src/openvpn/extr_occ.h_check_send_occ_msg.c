
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ occ_op; int timeval; } ;
struct context {TYPE_1__ c2; } ;


 int TO_LINK_DEF (struct context*) ;
 int check_send_occ_msg_dowork (struct context*) ;
 int tv_clear (int *) ;

__attribute__((used)) static inline void
check_send_occ_msg(struct context *c)
{
    if (c->c2.occ_op >= 0)
    {
        if (!TO_LINK_DEF(c))
        {
            check_send_occ_msg_dowork(c);
        }
        else
        {
            tv_clear(&c->c2.timeval);
        }
    }
}
