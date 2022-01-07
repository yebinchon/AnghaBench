
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUCCESS ;
 int php_post_entries ;
 int sapi_register_post_entries (int ) ;

int php_setup_sapi_content_types(void)
{
 sapi_register_post_entries(php_post_entries);

 return SUCCESS;
}
