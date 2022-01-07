
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_nat_option_list {scalar_t__ n; struct client_nat_entry* entries; } ;
struct client_nat_entry {int dummy; } ;


 scalar_t__ MAX_CLIENT_NAT ;
 int M_WARN ;
 int msg (int ,char*,scalar_t__) ;

__attribute__((used)) static bool
add_entry(struct client_nat_option_list *dest,
          const struct client_nat_entry *e)
{
    if (dest->n >= MAX_CLIENT_NAT)
    {
        msg(M_WARN, "WARNING: client-nat table overflow (max %d entries)", MAX_CLIENT_NAT);
        return 0;
    }
    else
    {
        dest->entries[dest->n++] = *e;
        return 1;
    }
}
