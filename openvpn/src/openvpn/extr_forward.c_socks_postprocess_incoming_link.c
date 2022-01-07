
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int from; int buf; TYPE_2__* link_socket; } ;
struct context {TYPE_3__ c2; } ;
struct TYPE_4__ {scalar_t__ proto; } ;
struct TYPE_5__ {TYPE_1__ info; scalar_t__ socks_proxy; } ;


 scalar_t__ PROTO_UDP ;
 int socks_process_incoming_udp (int *,int *) ;

__attribute__((used)) static inline void
socks_postprocess_incoming_link(struct context *c)
{
    if (c->c2.link_socket->socks_proxy && c->c2.link_socket->info.proto == PROTO_UDP)
    {
        socks_process_incoming_udp(&c->c2.buf, &c->c2.from);
    }
}
