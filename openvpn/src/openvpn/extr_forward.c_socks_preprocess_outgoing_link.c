
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct link_socket_actual {int dummy; } ;
struct TYPE_6__ {TYPE_2__* link_socket; int to_link_addr; int to_link; } ;
struct context {TYPE_3__ c2; } ;
struct TYPE_4__ {scalar_t__ proto; } ;
struct TYPE_5__ {struct link_socket_actual socks_relay; TYPE_1__ info; scalar_t__ socks_proxy; } ;


 scalar_t__ PROTO_UDP ;
 scalar_t__ socks_process_outgoing_udp (int *,int ) ;

__attribute__((used)) static inline void
socks_preprocess_outgoing_link(struct context *c,
                               struct link_socket_actual **to_addr,
                               int *size_delta)
{
    if (c->c2.link_socket->socks_proxy && c->c2.link_socket->info.proto == PROTO_UDP)
    {
        *size_delta += socks_process_outgoing_udp(&c->c2.to_link, c->c2.to_link_addr);
        *to_addr = &c->c2.link_socket->socks_relay;
    }
}
