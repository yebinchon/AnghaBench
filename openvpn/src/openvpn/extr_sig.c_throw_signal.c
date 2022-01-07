
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signal_received; int source; } ;


 int SIG_SOURCE_HARD ;
 TYPE_1__ siginfo_static ;

void
throw_signal(const int signum)
{
    siginfo_static.signal_received = signum;
    siginfo_static.source = SIG_SOURCE_HARD;
}
