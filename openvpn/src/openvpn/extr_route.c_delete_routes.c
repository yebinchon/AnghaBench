
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;
struct route_list {int iflags; int rgi; struct route_ipv4* routes; } ;
struct route_ipv6_list {int iflags; struct route_ipv6* routes_ipv6; } ;
struct route_ipv6 {struct route_ipv6* next; } ;
struct route_ipv4 {struct route_ipv4* next; } ;
struct env_set {int dummy; } ;
typedef int openvpn_net_ctx_t ;


 int RL_ROUTES_ADDED ;
 int clear_route_ipv6_list (struct route_ipv6_list*) ;
 int clear_route_list (struct route_list*) ;
 int delete_route (struct route_ipv4*,struct tuntap const*,unsigned int,int *,struct env_set const*,int *) ;
 int delete_route_ipv6 (struct route_ipv6*,struct tuntap const*,unsigned int,struct env_set const*,int *) ;
 int undo_redirect_default_route_to_vpn (struct route_list*,struct tuntap const*,unsigned int,struct env_set const*,int *) ;

void
delete_routes(struct route_list *rl, struct route_ipv6_list *rl6,
              const struct tuntap *tt, unsigned int flags,
              const struct env_set *es, openvpn_net_ctx_t *ctx)
{
    if (rl && rl->iflags & RL_ROUTES_ADDED)
    {
        struct route_ipv4 *r;
        for (r = rl->routes; r; r = r->next)
        {
            delete_route(r, tt, flags, &rl->rgi, es, ctx);
        }
        rl->iflags &= ~RL_ROUTES_ADDED;
    }

    undo_redirect_default_route_to_vpn(rl, tt, flags, es, ctx);

    if (rl)
    {
        clear_route_list(rl);
    }

    if (rl6 && (rl6->iflags & RL_ROUTES_ADDED) )
    {
        struct route_ipv6 *r6;
        for (r6 = rl6->routes_ipv6; r6; r6 = r6->next)
        {
            delete_route_ipv6(r6, tt, flags, es, ctx);
        }
        rl6->iflags &= ~RL_ROUTES_ADDED;
    }

    if (rl6)
    {
        clear_route_ipv6_list(rl6);
    }
}
