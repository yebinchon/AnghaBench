
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_info {int source; int * signal_text; scalar_t__ signal_received; } ;


 int SIG_SOURCE_SOFT ;

__attribute__((used)) static void
signal_reset(struct signal_info *si)
{
    if (si)
    {
        si->signal_received = 0;
        si->signal_text = ((void*)0);
        si->source = SIG_SOURCE_SOFT;
    }
}
