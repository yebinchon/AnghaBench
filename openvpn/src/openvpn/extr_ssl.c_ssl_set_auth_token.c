
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auth_token ;
 int auth_user_pass ;
 int set_auth_token (int *,int *,char const*) ;

void
ssl_set_auth_token(const char *token)
{
    set_auth_token(&auth_user_pass, &auth_token, token);
}
