
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int explicit_exit_notification_time_wait; } ;
struct TYPE_4__ {scalar_t__ explicit_exit_notification; } ;
struct TYPE_5__ {TYPE_1__ ce; } ;
struct context {TYPE_3__ c2; TYPE_2__ options; } ;


 int process_explicit_exit_notification_init (struct context*) ;

__attribute__((used)) static bool
process_sigterm(struct context *c)
{
    bool ret = 1;
    return ret;
}
