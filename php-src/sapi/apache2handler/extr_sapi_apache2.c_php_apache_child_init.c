
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int server_rec ;
typedef int apr_pool_t ;


 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,int *,int ,int ) ;
 int php_apache_child_shutdown ;

__attribute__((used)) static void php_apache_child_init(apr_pool_t *pchild, server_rec *s)
{
 apr_pool_cleanup_register(pchild, ((void*)0), php_apache_child_shutdown, apr_pool_cleanup_null);
}
