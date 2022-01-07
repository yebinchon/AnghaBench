
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int password; } ;


 int GET_USER_PASS_MANAGEMENT ;
 int GET_USER_PASS_PASSWORD_ONLY ;
 int UP_TYPE_PRIVATE_KEY ;
 int get_user_pass (TYPE_1__*,char const*,int ,int) ;
 TYPE_1__ passbuf ;
 int strlen (int ) ;

void
pem_password_setup(const char *auth_file)
{
    if (!strlen(passbuf.password))
    {
        get_user_pass(&passbuf, auth_file, UP_TYPE_PRIVATE_KEY, GET_USER_PASS_MANAGEMENT|GET_USER_PASS_PASSWORD_ONLY);
    }
}
