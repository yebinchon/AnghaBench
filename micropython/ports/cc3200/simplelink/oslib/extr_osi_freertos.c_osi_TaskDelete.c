
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TaskHandle_t ;
typedef scalar_t__ OsiTaskHandle ;


 int vTaskDelete (int ) ;

void osi_TaskDelete(OsiTaskHandle* pTaskHandle)
{
 vTaskDelete((TaskHandle_t)*pTaskHandle);
}
