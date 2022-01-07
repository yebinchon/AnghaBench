
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v6only ;
struct gc_arena {int dummy; } ;
struct addrinfo {int ai_family; int ai_addr; int ai_addrlen; struct addrinfo* ai_next; } ;
typedef int socket_descriptor_t ;


 int AF_INET6 ;
 int ASSERT (struct addrinfo*) ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int M_ERRNO ;
 int M_FATAL ;
 int M_INFO ;
 int M_NONFATAL ;
 int PS_SHOW_PORT ;
 int addr_family_name (int) ;
 scalar_t__ bind (int ,int ,int ) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int,char*,...) ;
 int print_sockaddr_ex (int ,char*,int ,struct gc_arena*) ;
 scalar_t__ setsockopt (int ,int ,int ,void*,int) ;

void
socket_bind(socket_descriptor_t sd,
            struct addrinfo *local,
            int ai_family,
            const char *prefix,
            bool ipv6only)
{
    struct gc_arena gc = gc_new();
    struct addrinfo *cur;

    ASSERT(local);



    for (cur = local; cur; cur = cur->ai_next)
    {
        if (cur->ai_family == ai_family)
        {
            break;
        }
    }
    if (!cur)
    {
        msg(M_FATAL, "%s: Socket bind failed: Addr to bind has no %s record",
            prefix, addr_family_name(ai_family));
    }

    if (ai_family == AF_INET6)
    {
        int v6only = ipv6only ? 1 : 0;

        msg(M_INFO, "setsockopt(IPV6_V6ONLY=%d)", v6only);
        if (setsockopt(sd, IPPROTO_IPV6, IPV6_V6ONLY, (void *) &v6only, sizeof(v6only)))
        {
            msg(M_NONFATAL|M_ERRNO, "Setting IPV6_V6ONLY=%d failed", v6only);
        }
    }
    if (bind(sd, cur->ai_addr, cur->ai_addrlen))
    {
        msg(M_FATAL | M_ERRNO, "%s: Socket bind failed on local address %s",
            prefix,
            print_sockaddr_ex(local->ai_addr, ":", PS_SHOW_PORT, &gc));
    }
    gc_free(&gc);
}
