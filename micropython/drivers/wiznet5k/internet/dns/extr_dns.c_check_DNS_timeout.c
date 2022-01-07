
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;


 int DNS_WAIT_TIME ;
 int HAL_GetTick () ;
 scalar_t__ MAX_DNS_RETRY ;
 int hal_sys_tick ;

int8_t check_DNS_timeout(void)
{
 static uint8_t retry_count;

    uint32_t tick = HAL_GetTick();
 if(tick - hal_sys_tick >= DNS_WAIT_TIME * 1000)
 {
  hal_sys_tick = tick;
  if(retry_count >= MAX_DNS_RETRY) {
   retry_count = 0;
   return -1;
  }
  retry_count++;
  return 0;
 }

 return 1;
}
