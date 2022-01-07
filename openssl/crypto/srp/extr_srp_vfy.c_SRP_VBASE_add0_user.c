
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int users_pwd; } ;
typedef int SRP_user_pwd ;
typedef TYPE_1__ SRP_VBASE ;


 scalar_t__ sk_SRP_user_pwd_push (int ,int *) ;

int SRP_VBASE_add0_user(SRP_VBASE *vb, SRP_user_pwd *user_pwd)
{
    if (sk_SRP_user_pwd_push(vb->users_pwd, user_pwd) <= 0)
        return 0;
    return 1;
}
