
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_2__ {scalar_t__ method; int raddr; void* result; } ;
typedef TYPE_1__ check_network_data ;


 void* check_ip (int ,struct sockaddr*,struct sockaddr*) ;
 scalar_t__ ipCmpSameHost ;
 int pg_sockaddr_cidr_mask (struct sockaddr_storage*,int *,int ) ;

__attribute__((used)) static void
check_network_callback(struct sockaddr *addr, struct sockaddr *netmask,
        void *cb_data)
{
 check_network_data *cn = (check_network_data *) cb_data;
 struct sockaddr_storage mask;


 if (cn->result)
  return;

 if (cn->method == ipCmpSameHost)
 {

  pg_sockaddr_cidr_mask(&mask, ((void*)0), addr->sa_family);
  cn->result = check_ip(cn->raddr, addr, (struct sockaddr *) &mask);
 }
 else
 {

  cn->result = check_ip(cn->raddr, addr, netmask);
 }
}
