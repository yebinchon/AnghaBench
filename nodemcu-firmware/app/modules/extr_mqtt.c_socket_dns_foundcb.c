
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ip_addr_t ;


 int socket_dns_found (char const*,int *,void*) ;

__attribute__((used)) static void socket_dns_foundcb(const char *name, ip_addr_t *ipaddr, void *arg)
{
  socket_dns_found(name, ipaddr, arg);
}
