
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tls_exit_signal; } ;
struct context {TYPE_1__ c2; } ;


 int D_STREAM_ERRORS ;
 int msg (int ,char*) ;
 int register_signal (struct context*,int ,char*) ;

void
check_tls_errors_co(struct context *c)
{
    msg(D_STREAM_ERRORS, "Fatal TLS error (check_tls_errors_co), restarting");
    register_signal(c, c->c2.tls_exit_signal, "tls-error");
}
