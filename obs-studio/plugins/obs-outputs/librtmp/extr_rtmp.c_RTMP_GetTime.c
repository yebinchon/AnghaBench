
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tms {int dummy; } ;


 int _SC_CLK_TCK ;
 int clk_tck ;
 int sysconf (int ) ;
 int timeGetTime () ;
 int times (struct tms*) ;

uint32_t
RTMP_GetTime()
{





    struct tms t;
    if (!clk_tck) clk_tck = sysconf(_SC_CLK_TCK);
    return times(&t) * 1000 / clk_tck;

}
