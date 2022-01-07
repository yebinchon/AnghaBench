
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int CONFIG_SYS_HZ ;

ulong get_tbclk (void)
{
 ulong tbclk;
 tbclk = CONFIG_SYS_HZ;
 return tbclk;
}
