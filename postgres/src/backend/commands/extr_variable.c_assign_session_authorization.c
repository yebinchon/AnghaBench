
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_superuser; int roleid; } ;
typedef TYPE_1__ role_auth_extra ;


 int SetSessionAuthorization (int ,int ) ;

void
assign_session_authorization(const char *newval, void *extra)
{
 role_auth_extra *myextra = (role_auth_extra *) extra;


 if (!myextra)
  return;

 SetSessionAuthorization(myextra->roleid, myextra->is_superuser);
}
