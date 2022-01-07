
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numbers_arr; scalar_t__ values_arr; scalar_t__ values; } ;
typedef TYPE_1__ AttStatsSlot ;


 int pfree (scalar_t__) ;

void
free_attstatsslot(AttStatsSlot *sslot)
{

 if (sslot->values)
  pfree(sslot->values);


 if (sslot->values_arr)
  pfree(sslot->values_arr);
 if (sslot->numbers_arr)
  pfree(sslot->numbers_arr);
}
