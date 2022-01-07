
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_pass {int defined; char const* password; char const* username; } ;


 int USER_PASS_LEN ;
 int purge_user_pass (struct user_pass*,int) ;
 scalar_t__ strlen (char const*) ;
 int strncpynt (char const*,char const*,int ) ;

void
set_auth_token(struct user_pass *up, struct user_pass *tk, const char *token)
{

    if (token && strlen(token) && up && up->defined)
    {
        strncpynt(tk->password, token, USER_PASS_LEN);
        strncpynt(tk->username, up->username, USER_PASS_LEN);
        tk->defined = 1;
    }


    purge_user_pass(up, 0);
}
