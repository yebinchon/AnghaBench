
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auth_user_pass ;
 int passbuf ;
 int pkcs11_logout () ;
 int purge_user_pass (int *,int) ;
 int ssl_purge_auth_challenge () ;

void
ssl_purge_auth(const bool auth_user_pass_only)
{
    if (!auth_user_pass_only)
    {



        purge_user_pass(&passbuf, 1);
    }
    purge_user_pass(&auth_user_pass, 1);



}
