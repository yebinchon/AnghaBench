
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_smi {int num_ports; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_mc_index ) (struct rtl8366_smi*,int,int*) ;} ;


 int stub1 (struct rtl8366_smi*,int,int*) ;

__attribute__((used)) static int rtl8366_mc_is_used(struct rtl8366_smi *smi, int mc_index, int *used)
{
 int err;
 int i;

 *used = 0;
 for (i = 0; i < smi->num_ports; i++) {
  int index = 0;

  err = smi->ops->get_mc_index(smi, i, &index);
  if (err)
   return err;

  if (mc_index == index) {
   *used = 1;
   break;
  }
 }

 return 0;
}
