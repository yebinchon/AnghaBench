
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pValue; int (* pEntry ) (int ) ;} ;
typedef TYPE_1__ tSimpleLinkSpawnMsg ;
typedef scalar_t__ portBASE_TYPE ;


 int SL_SPAWN_MAX_WAIT_MS ;
 scalar_t__ pdPASS ;
 int pybwdt_sl_alive () ;
 int stub1 (int ) ;
 scalar_t__ xQueueReceive (int ,TYPE_1__*,int ) ;
 int xSimpleLinkSpawnQueue ;

void vSimpleLinkSpawnTask(void *pvParameters)
{
 tSimpleLinkSpawnMsg Msg;
 portBASE_TYPE ret;

 for(;;)
 {
  ret = xQueueReceive( xSimpleLinkSpawnQueue, &Msg, SL_SPAWN_MAX_WAIT_MS);
  if(ret == pdPASS)
  {
    Msg.pEntry(Msg.pValue);
  }

        pybwdt_sl_alive();
 }
}
