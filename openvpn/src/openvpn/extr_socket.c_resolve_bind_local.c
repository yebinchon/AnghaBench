
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* lsa; int proto; } ;
struct link_socket {int local_port; int local_host; TYPE_2__ info; int dns_cache; } ;
struct gc_arena {int dummy; } ;
typedef int sa_family_t ;
struct TYPE_3__ {int bind_local; } ;


 int GETADDR_DATAGRAM ;
 int GETADDR_FATAL ;
 int GETADDR_PASSIVE ;
 int GETADDR_RESOLVE ;
 int GETADDR_WARN_ON_SIGNAL ;
 int M_FATAL ;
 int gai_strerror (int) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int get_cached_dns_entry (int ,int ,int ,int const,int,int *) ;
 int msg (int ,char*,int ,int ,int ) ;
 int openvpn_getaddrinfo (int,int ,int ,int ,int *,int const,int *) ;
 scalar_t__ proto_is_dgram (int ) ;

__attribute__((used)) static void
resolve_bind_local(struct link_socket *sock, const sa_family_t af)
{
    struct gc_arena gc = gc_new();


    if (!sock->info.lsa->bind_local)
    {
        int flags = GETADDR_RESOLVE | GETADDR_WARN_ON_SIGNAL
                    |GETADDR_FATAL | GETADDR_PASSIVE;
        int status;

        if (proto_is_dgram(sock->info.proto))
        {
            flags |= GETADDR_DATAGRAM;
        }


        status = get_cached_dns_entry(sock->dns_cache,
                                      sock->local_host,
                                      sock->local_port,
                                      af,
                                      flags,
                                      &sock->info.lsa->bind_local);

        if (status)
        {
            status = openvpn_getaddrinfo(flags, sock->local_host, sock->local_port, 0,
                                         ((void*)0), af, &sock->info.lsa->bind_local);
        }

        if (status !=0)
        {
            msg(M_FATAL, "getaddrinfo() failed for local \"%s:%s\": %s",
                sock->local_host, sock->local_port,
                gai_strerror(status));
        }
    }

    gc_free(&gc);
}
