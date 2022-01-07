
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vTaskDelay (unsigned int) ;

void osi_Sleep(unsigned int MilliSecs)
{
 vTaskDelay(MilliSecs);
}
