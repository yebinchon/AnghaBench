
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUCCESS ;
 int php_default_input_filter ;
 int php_default_post_reader ;
 int php_default_treat_data ;
 int sapi_register_default_post_reader (int ) ;
 int sapi_register_input_filter (int ,int *) ;
 int sapi_register_treat_data (int ) ;

int php_startup_sapi_content_types(void)
{
 sapi_register_default_post_reader(php_default_post_reader);
 sapi_register_treat_data(php_default_treat_data);
 sapi_register_input_filter(php_default_input_filter, ((void*)0));
 return SUCCESS;
}
