
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ occ_op; int timeval; int occ_interval; } ;
struct context {TYPE_1__ c2; } ;


 int ETT_DEFAULT ;
 int TO_LINK_DEF (struct context*) ;
 int check_send_occ_req_dowork (struct context*) ;
 scalar_t__ event_timeout_defined (int *) ;
 scalar_t__ event_timeout_trigger (int *,int *,int ) ;

__attribute__((used)) static inline void
check_send_occ_req(struct context *c)
{
    if (event_timeout_defined(&c->c2.occ_interval)
        && event_timeout_trigger(&c->c2.occ_interval,
                                 &c->c2.timeval,
                                 (!TO_LINK_DEF(c) && c->c2.occ_op < 0) ? ETT_DEFAULT : 0))
    {
        check_send_occ_req_dowork(c);
    }
}
