
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame; int link_socket; } ;
struct context {int sig; TYPE_1__ c2; } ;


 int link_socket_init_phase2 (int ,int *,int ) ;

__attribute__((used)) static void
do_init_socket_2(struct context *c)
{
    link_socket_init_phase2(c->c2.link_socket, &c->c2.frame,
                            c->sig);
}
