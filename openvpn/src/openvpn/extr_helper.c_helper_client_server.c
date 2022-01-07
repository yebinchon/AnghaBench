
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int topology; int server_flags; int ifconfig_ipv6_pool_defined; int ifconfig_ipv6_netbits; int server_netbits_ipv6; int ifconfig_ipv6_pool_netbits; int server_bridge_defined; int server_bridge_proxy_dhcp; int ifconfig_pool_defined; int server_network; int server_netmask; int tls_server; int ifconfig_pool_start; int ifconfig_pool_end; int ifconfig_pool_netmask; int push_ifconfig_constraint_defined; int push_ifconfig_constraint_network; int push_ifconfig_constraint_netmask; int server_bridge_ip; int server_bridge_pool_start; int server_bridge_netmask; int server_bridge_pool_end; int key_method; int pull; int tls_client; scalar_t__ client; int gc; void* mode; scalar_t__ shared_secret_file; void* ifconfig_remote_netmask; void* ifconfig_local; void* route_default_gateway; scalar_t__ enable_c2c; scalar_t__ server_defined; int server_network_ipv6; int ifconfig_ipv6_pool_base; void* ifconfig_ipv6_remote; void* ifconfig_ipv6_local; scalar_t__ server_ipv6_defined; int dev_type; int dev; } ;
struct gc_arena {int dummy; } ;


 int ASSERT (int) ;
 int const DEV_TYPE_TAP ;
 int const DEV_TYPE_TUN ;
 int IFCONFIG_POOL_MIN_NETBITS ;
 void* MODE_SERVER ;
 int M_USAGE ;
 int SF_NOPOOL ;
 int SF_NO_PUSH_ROUTE_GATEWAY ;
 int const TOP_NET30 ;
 int const TOP_P2P ;
 int const TOP_SUBNET ;
 int add_in6_addr (int ,int) ;
 int dev_type_enum (int ,int ) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int helper_add_route (int,int,struct options*) ;
 int ifconfig_pool_verify_range (int ,int,int) ;
 int msg (int ,char*,...) ;
 int netmask_to_netbits (int,int,int*) ;
 void* print_in6_addr (int ,int ,int *) ;
 void* print_in_addr_t (int,int ,int *) ;
 int print_netmask (int,struct gc_arena*) ;
 char* print_opt_route (int,int,int *) ;
 char* print_opt_route_gateway (int,int *) ;
 char* print_opt_route_gateway_dhcp (int *) ;
 char* print_opt_topology (int const,int *) ;
 int push_option (struct options*,char*,int ) ;
 int verify_common_subnet (char*,int,int,int) ;

void
helper_client_server(struct options *o)
{
    struct gc_arena gc = gc_new();
    gc_free(&gc);
}
