
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tls_exit_signal; } ;
struct context {TYPE_1__ c2; } ;


 int register_signal (struct context*,int ,char*) ;

void
check_tls_errors_nco(struct context *c)
{
    register_signal(c, c->c2.tls_exit_signal, "tls-error");
}
