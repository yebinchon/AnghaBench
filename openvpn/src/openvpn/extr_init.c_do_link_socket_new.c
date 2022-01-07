
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_socket_owned; scalar_t__ link_socket; } ;
struct context {TYPE_1__ c2; } ;


 int ASSERT (int) ;
 scalar_t__ link_socket_new () ;

__attribute__((used)) static void
do_link_socket_new(struct context *c)
{
    ASSERT(!c->c2.link_socket);
    c->c2.link_socket = link_socket_new();
    c->c2.link_socket_owned = 1;
}
