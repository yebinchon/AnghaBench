
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int explicit_exit_notification_interval; } ;
struct context {TYPE_2__* sig; TYPE_1__ c2; } ;
struct TYPE_4__ {scalar_t__ signal_received; scalar_t__ source; } ;


 int M_INFO ;
 scalar_t__ SIGHUP ;
 int SIGTERM ;
 scalar_t__ SIGUSR1 ;
 scalar_t__ SIG_SOURCE_HARD ;
 scalar_t__ event_timeout_defined (int *) ;
 int msg (int ,char*,int ) ;
 int register_signal (struct context*,int ,char*) ;
 int signal_name (scalar_t__,int) ;
 int signal_reset (TYPE_2__*) ;

__attribute__((used)) static bool
ignore_restart_signals(struct context *c)
{
    bool ret = 0;
    return ret;
}
