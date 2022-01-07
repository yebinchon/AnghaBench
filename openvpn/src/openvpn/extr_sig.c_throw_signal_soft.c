
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signal_received; char const* signal_text; int source; } ;


 int SIG_SOURCE_SOFT ;
 TYPE_1__ siginfo_static ;

void
throw_signal_soft(const int signum, const char *signal_text)
{
    siginfo_static.signal_received = signum;
    siginfo_static.source = SIG_SOURCE_SOFT;
    siginfo_static.signal_text = signal_text;
}
