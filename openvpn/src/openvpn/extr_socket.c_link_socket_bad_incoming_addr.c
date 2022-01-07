
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct link_socket_info {TYPE_5__* lsa; } ;
struct TYPE_6__ {int sa_family; } ;
struct TYPE_7__ {TYPE_1__ sa; } ;
struct TYPE_8__ {TYPE_2__ addr; } ;
struct link_socket_actual {TYPE_3__ dest; } ;
struct gc_arena {int dummy; } ;
struct buffer {scalar_t__ len; } ;
struct addrinfo {int ai_addr; struct addrinfo* ai_next; } ;
struct TYPE_10__ {TYPE_4__* remote_list; } ;
struct TYPE_9__ {struct addrinfo* ai_next; int ai_addr; } ;




 int D_LINK_ERRORS ;
 int PS_SHOW_PORT ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,int ,...) ;
 int print_link_socket_actual (struct link_socket_actual const*,struct gc_arena*) ;
 int print_sockaddr_ex (int ,char*,int ,struct gc_arena*) ;

void
link_socket_bad_incoming_addr(struct buffer *buf,
                              const struct link_socket_info *info,
                              const struct link_socket_actual *from_addr)
{
    struct gc_arena gc = gc_new();
    struct addrinfo *ai;

    switch (from_addr->dest.addr.sa.sa_family)
    {
        case 129:
        case 128:
            msg(D_LINK_ERRORS,
                "TCP/UDP: Incoming packet rejected from %s[%d], expected peer address: %s (allow this incoming source address/port by removing --remote or adding --float)",
                print_link_socket_actual(from_addr, &gc),
                (int)from_addr->dest.addr.sa.sa_family,
                print_sockaddr_ex(info->lsa->remote_list->ai_addr,":",PS_SHOW_PORT, &gc));

            for (ai = info->lsa->remote_list->ai_next; ai; ai = ai->ai_next)
            {
                msg(D_LINK_ERRORS,"or from peer address: %s",
                    print_sockaddr_ex(ai->ai_addr,":",PS_SHOW_PORT, &gc));
            }
            break;
    }
    buf->len = 0;
    gc_free(&gc);
}
