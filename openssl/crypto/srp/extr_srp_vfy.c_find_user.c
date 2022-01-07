
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int users_pwd; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_1__ SRP_user_pwd ;
typedef TYPE_2__ SRP_VBASE ;


 int sk_SRP_user_pwd_num (int ) ;
 TYPE_1__* sk_SRP_user_pwd_value (int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static SRP_user_pwd *find_user(SRP_VBASE *vb, char *username)
{
    int i;
    SRP_user_pwd *user;

    if (vb == ((void*)0))
        return ((void*)0);

    for (i = 0; i < sk_SRP_user_pwd_num(vb->users_pwd); i++) {
        user = sk_SRP_user_pwd_value(vb->users_pwd, i);
        if (strcmp(user->id, username) == 0)
            return user;
    }

    return ((void*)0);
}
