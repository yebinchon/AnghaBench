
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tls_exit_signal; } ;
struct TYPE_3__ {scalar_t__ tls_exit; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;


 int SIGTERM ;
 int SIGUSR1 ;

__attribute__((used)) static void
do_signal_on_tls_errors(struct context *c)
{
    if (c->options.tls_exit)
    {
        c->c2.tls_exit_signal = SIGTERM;
    }
    else
    {
        c->c2.tls_exit_signal = SIGUSR1;
    }
}
