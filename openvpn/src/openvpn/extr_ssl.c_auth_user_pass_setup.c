
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct static_challenge_info {int flags; scalar_t__ challenge_text; } ;
struct TYPE_6__ {int defined; } ;
struct TYPE_5__ {int defined; } ;


 int GET_USER_PASS_DYNAMIC_CHALLENGE ;
 int GET_USER_PASS_MANAGEMENT ;
 int GET_USER_PASS_STATIC_CHALLENGE ;
 int GET_USER_PASS_STATIC_CHALLENGE_ECHO ;
 int SC_ECHO ;
 int UP_TYPE_AUTH ;
 scalar_t__ auth_challenge ;
 TYPE_4__ auth_token ;
 TYPE_1__ auth_user_pass ;
 int auth_user_pass_enabled ;
 int get_user_pass (TYPE_1__*,char const*,int ,int) ;
 int get_user_pass_cr (TYPE_1__*,char const*,int ,int,scalar_t__) ;

void
auth_user_pass_setup(const char *auth_file, const struct static_challenge_info *sci)
{
    auth_user_pass_enabled = 1;
    if (!auth_user_pass.defined && !auth_token.defined)
    {
        get_user_pass(&auth_user_pass, auth_file, UP_TYPE_AUTH, GET_USER_PASS_MANAGEMENT);
    }
}
