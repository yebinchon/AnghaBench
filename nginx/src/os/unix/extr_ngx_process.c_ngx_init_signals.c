
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {int sa_mask; int sa_handler; int sa_flags; scalar_t__ sa_sigaction; } ;
struct TYPE_3__ {scalar_t__ signo; int signame; scalar_t__ handler; } ;
typedef TYPE_1__ ngx_signal_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int SA_SIGINFO ;
 int SIG_IGN ;
 int ngx_errno ;
 int ngx_log_error (int ,int *,int ,char*,int ) ;
 int ngx_memzero (struct sigaction*,int) ;
 int sigaction (scalar_t__,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 TYPE_1__* signals ;

ngx_int_t
ngx_init_signals(ngx_log_t *log)
{
    ngx_signal_t *sig;
    struct sigaction sa;

    for (sig = signals; sig->signo != 0; sig++) {
        ngx_memzero(&sa, sizeof(struct sigaction));

        if (sig->handler) {
            sa.sa_sigaction = sig->handler;
            sa.sa_flags = SA_SIGINFO;

        } else {
            sa.sa_handler = SIG_IGN;
        }

        sigemptyset(&sa.sa_mask);
        if (sigaction(sig->signo, &sa, ((void*)0)) == -1) {




            ngx_log_error(NGX_LOG_EMERG, log, ngx_errno,
                          "sigaction(%s) failed", sig->signame);
            return NGX_ERROR;

        }
    }

    return NGX_OK;
}
