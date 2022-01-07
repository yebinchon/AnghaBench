
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_CLK_TCK ;
 int error (char*) ;
 long sysconf (int ) ;
 unsigned int system_hz ;

void get_system_HZ(void) {
    long ticks;

    if ((ticks = sysconf(_SC_CLK_TCK)) == -1) {
        error("Cannot get system clock ticks");
    }

    system_hz = (unsigned int) ticks;
}
