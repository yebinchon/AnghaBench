
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nocache; int wait_for_push; } ;
struct TYPE_3__ {int nocache; } ;


 TYPE_2__ auth_user_pass ;
 TYPE_1__ passbuf ;

void
ssl_set_auth_nocache(void)
{
    passbuf.nocache = 1;
    auth_user_pass.nocache = 1;

    auth_user_pass.wait_for_push = 1;
}
