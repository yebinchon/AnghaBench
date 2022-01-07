
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_running ;

void LSAPI_Stop(void)
{
    g_running = 0;
}
