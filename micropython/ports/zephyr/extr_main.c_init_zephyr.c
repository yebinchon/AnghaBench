
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; } ;
struct TYPE_5__ {TYPE_2__ member_0; } ;
struct in_addr {TYPE_1__ member_0; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; int member_15; int member_14; int member_13; int member_12; int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; } ;
struct TYPE_7__ {TYPE_4__ member_0; } ;
struct in6_addr {TYPE_3__ member_0; } ;


 int NET_ADDR_MANUAL ;
 int * net_if_get_default () ;
 int net_if_ipv4_addr_add (int *,struct in_addr*,int ,int ) ;
 int net_if_ipv4_set_gw (int *,struct in_addr*) ;
 int net_if_ipv4_set_netmask (int *,struct in_addr*) ;
 int net_if_ipv6_addr_add (int *,struct in6_addr*,int ,int ) ;

void init_zephyr(void) {
}
