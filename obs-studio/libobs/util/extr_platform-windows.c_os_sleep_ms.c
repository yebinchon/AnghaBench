
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int Sleep (scalar_t__) ;
 int get_winver () ;

void os_sleep_ms(uint32_t duration)
{

 if (get_winver() >= 0x0602 && duration > 0)
  duration--;

 Sleep(duration);
}
