
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct netif_saddr_data {TYPE_2__ addrs; } ;
struct TYPE_3__ {int name; } ;


 int info (char*,int ) ;

void netif_log_saddrs(struct netif_saddr_data *sd)
{
 for (size_t i = 0; i < sd->addrs.num; i++)
  info("\t\t%s", sd->addrs.array[i].name);
}
