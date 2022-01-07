
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct netif_saddr_data {TYPE_2__ addrs; } ;
struct TYPE_3__ {int addr; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_2__) ;

__attribute__((used)) static inline void netif_saddr_data_free(struct netif_saddr_data *data)
{
 for (size_t i = 0; i < data->addrs.num; i++) {
  bfree(data->addrs.array[i].name);
  bfree(data->addrs.array[i].addr);
 }
 da_free(data->addrs);
}
