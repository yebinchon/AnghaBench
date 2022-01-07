
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG (int ) ;
 int auto_globals_jit ;
 int php_auto_globals_create_cookie ;
 int php_auto_globals_create_env ;
 int php_auto_globals_create_files ;
 int php_auto_globals_create_get ;
 int php_auto_globals_create_post ;
 int php_auto_globals_create_request ;
 int php_auto_globals_create_server ;
 int zend_register_auto_global (int ,int ,int ) ;
 int zend_string_init_interned (char*,int,int) ;

void php_startup_auto_globals(void)
{
 zend_register_auto_global(zend_string_init_interned("_GET", sizeof("_GET")-1, 1), 0, php_auto_globals_create_get);
 zend_register_auto_global(zend_string_init_interned("_POST", sizeof("_POST")-1, 1), 0, php_auto_globals_create_post);
 zend_register_auto_global(zend_string_init_interned("_COOKIE", sizeof("_COOKIE")-1, 1), 0, php_auto_globals_create_cookie);
 zend_register_auto_global(zend_string_init_interned("_SERVER", sizeof("_SERVER")-1, 1), PG(auto_globals_jit), php_auto_globals_create_server);
 zend_register_auto_global(zend_string_init_interned("_ENV", sizeof("_ENV")-1, 1), PG(auto_globals_jit), php_auto_globals_create_env);
 zend_register_auto_global(zend_string_init_interned("_REQUEST", sizeof("_REQUEST")-1, 1), PG(auto_globals_jit), php_auto_globals_create_request);
 zend_register_auto_global(zend_string_init_interned("_FILES", sizeof("_FILES")-1, 1), 0, php_auto_globals_create_files);
}
