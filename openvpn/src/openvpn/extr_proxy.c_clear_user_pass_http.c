
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int purge_user_pass (int *,int) ;
 int static_proxy_user_pass ;

__attribute__((used)) static void
clear_user_pass_http(void)
{
    purge_user_pass(&static_proxy_user_pass, 1);
}
