
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int usleep (int) ;

void os_sleep_ms(uint32_t duration)
{
 usleep(duration * 1000);
}
