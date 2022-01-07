
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dns_entry {int ai_family; int flags; struct addrinfo* ai; int servname; int hostname; struct cached_dns_entry* next; } ;
struct addrinfo {int dummy; } ;


 int GETADDR_CACHE_MASK ;
 scalar_t__ streqnull (int ,char const*) ;

__attribute__((used)) static int
get_cached_dns_entry(struct cached_dns_entry *dns_cache,
                     const char *hostname,
                     const char *servname,
                     int ai_family,
                     int resolve_flags,
                     struct addrinfo **ai)
{
    struct cached_dns_entry *ph;
    int flags;


    flags = resolve_flags & GETADDR_CACHE_MASK;

    for (ph = dns_cache; ph; ph = ph->next)
    {
        if (streqnull(ph->hostname, hostname)
            && streqnull(ph->servname, servname)
            && ph->ai_family == ai_family
            && ph->flags == flags)
        {
            *ai = ph->ai;
            return 0;
        }
    }
    return -1;
}
