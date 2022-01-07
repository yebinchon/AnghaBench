
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* lsa; int af; int proto; } ;
struct link_socket {scalar_t__ mode; TYPE_5__ info; scalar_t__ bind_local; scalar_t__ inetd; } ;
struct gc_arena {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addr; struct addrinfo* ai_next; } ;
typedef scalar_t__ sa_family_t ;
struct TYPE_7__ {scalar_t__ sa_family; } ;
struct TYPE_8__ {TYPE_1__ sa; } ;
struct TYPE_9__ {TYPE_2__ addr; } ;
struct TYPE_12__ {TYPE_3__ dest; } ;
struct TYPE_10__ {TYPE_6__ actual; struct addrinfo* bind_local; } ;


 int ASSERT (struct addrinfo*) ;
 int D_INIT_MEDIUM ;
 scalar_t__ LS_MODE_TCP_ACCEPT_FROM ;
 int M_INFO ;
 int PS_SHOW_PORT_IF_DEFINED ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int const,char*,int ,...) ;
 int print_link_socket_actual_ex (TYPE_6__*,char*,int ,struct gc_arena*) ;
 int print_sockaddr (int ,struct gc_arena*) ;
 int proto2ascii (int ,int ,int) ;

__attribute__((used)) static void
linksock_print_addr(struct link_socket *sock)
{
    struct gc_arena gc = gc_new();
    const int msglevel = (sock->mode == LS_MODE_TCP_ACCEPT_FROM) ? D_INIT_MEDIUM : M_INFO;


    if (sock->inetd)
    {
        msg(msglevel, "%s link local: [inetd]", proto2ascii(sock->info.proto, sock->info.af, 1));
    }
    else if (sock->bind_local)
    {
        sa_family_t ai_family = sock->info.lsa->actual.dest.addr.sa.sa_family;



        struct addrinfo *cur;
        for (cur = sock->info.lsa->bind_local; cur; cur = cur->ai_next)
        {
            if (!ai_family || ai_family == cur->ai_family)
            {
                break;
            }
        }
        ASSERT(cur);
        msg(msglevel, "%s link local (bound): %s",
            proto2ascii(sock->info.proto, sock->info.af, 1),
            print_sockaddr(cur->ai_addr,&gc));
    }
    else
    {
        msg(msglevel, "%s link local: (not bound)",
            proto2ascii(sock->info.proto, sock->info.af, 1));
    }


    msg(msglevel, "%s link remote: %s",
        proto2ascii(sock->info.proto, sock->info.af, 1),
        print_link_socket_actual_ex(&sock->info.lsa->actual,
                                    ":",
                                    PS_SHOW_PORT_IF_DEFINED,
                                    &gc));
    gc_free(&gc);
}
