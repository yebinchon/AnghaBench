
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status_output_owned; int * status_output; } ;
struct context {TYPE_2__ c1; TYPE_1__* sig; } ;
struct TYPE_3__ {scalar_t__ signal_received; } ;


 scalar_t__ SIGUSR1 ;
 int status_close (int *) ;

__attribute__((used)) static void
do_close_status_output(struct context *c)
{
    if (!(c->sig->signal_received == SIGUSR1))
    {
        if (c->c1.status_output_owned && c->c1.status_output)
        {
            status_close(c->c1.status_output);
            c->c1.status_output = ((void*)0);
            c->c1.status_output_owned = 0;
        }
    }
}
