
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int Sleep (int) ;

void mp_sleep_us(int64_t us)
{
    if (us < 0)
        return;



    if (us < 1000)
        us = 1000;
    Sleep(us / 1000);
}
