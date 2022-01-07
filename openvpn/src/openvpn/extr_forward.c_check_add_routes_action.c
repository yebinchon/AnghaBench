
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int route_wakeup_expire; int route_wakeup; int es; } ;
struct TYPE_4__ {int tuntap; int route_ipv6_list; int route_list; } ;
struct context {TYPE_1__ c2; int net_ctx; int plugins; TYPE_2__ c1; int options; } ;


 int ISC_ERRORS ;
 int do_route (int *,int ,int ,int ,int ,int ,int *) ;
 int event_timeout_clear (int *) ;
 int initialization_sequence_completed (struct context*,int ) ;
 int update_time () ;

__attribute__((used)) static void
check_add_routes_action(struct context *c, const bool errors)
{
    do_route(&c->options, c->c1.route_list, c->c1.route_ipv6_list,
             c->c1.tuntap, c->plugins, c->c2.es, &c->net_ctx);
    update_time();
    event_timeout_clear(&c->c2.route_wakeup);
    event_timeout_clear(&c->c2.route_wakeup_expire);
    initialization_sequence_completed(c, errors ? ISC_ERRORS : 0);
}
