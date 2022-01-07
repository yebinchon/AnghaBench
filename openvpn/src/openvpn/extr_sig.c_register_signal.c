
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct context {TYPE_1__* sig; } ;
struct TYPE_2__ {int signal_received; char const* signal_text; } ;


 int SIGTERM ;

void
register_signal(struct context *c, int sig, const char *text)
{
    if (c->sig->signal_received != SIGTERM)
    {
        c->sig->signal_received = sig;
    }
    c->sig->signal_text = text;
}
