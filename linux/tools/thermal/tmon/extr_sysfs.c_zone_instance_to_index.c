
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_tz_sensor; TYPE_1__* tzi; } ;
struct TYPE_3__ {int instance; } ;


 int ENOENT ;
 TYPE_2__ ptdata ;

int zone_instance_to_index(int zone_inst)
{
 int i;

 for (i = 0; i < ptdata.nr_tz_sensor; i++)
  if (ptdata.tzi[i].instance == zone_inst)
   return i;
 return -ENOENT;
}
