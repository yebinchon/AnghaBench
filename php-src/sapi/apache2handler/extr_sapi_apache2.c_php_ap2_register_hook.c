
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int APR_HOOK_MIDDLE ;
 int ap_hook_child_init (int ,int *,int *,int ) ;
 int ap_hook_handler (int ,int *,int *,int ) ;
 int ap_hook_post_config (int ,int *,int *,int ) ;
 int ap_hook_pre_config (int ,int *,int *,int ) ;
 int php_apache_child_init ;
 int php_apache_server_startup ;
 int php_apache_signal_init ;
 int php_handler ;
 int php_pre_config ;

void php_ap2_register_hook(apr_pool_t *p)
{
 ap_hook_pre_config(php_pre_config, ((void*)0), ((void*)0), APR_HOOK_MIDDLE);
 ap_hook_post_config(php_apache_server_startup, ((void*)0), ((void*)0), APR_HOOK_MIDDLE);
 ap_hook_handler(php_handler, ((void*)0), ((void*)0), APR_HOOK_MIDDLE);



 ap_hook_child_init(php_apache_child_init, ((void*)0), ((void*)0), APR_HOOK_MIDDLE);
}
