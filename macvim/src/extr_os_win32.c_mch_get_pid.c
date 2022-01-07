
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetCurrentProcessId () ;

long
mch_get_pid(void)
{
    return (long)GetCurrentProcessId();
}
