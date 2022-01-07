
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait_for_push; } ;


 TYPE_1__ auth_user_pass ;
 int purge_user_pass (TYPE_1__*,int) ;

void
delayed_auth_pass_purge(void)
{
    auth_user_pass.wait_for_push = 0;
    purge_user_pass(&auth_user_pass, 0);
}
