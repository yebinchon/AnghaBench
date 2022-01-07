
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* r; } ;
typedef TYPE_2__ php_struct ;
struct TYPE_4__ {int subprocess_env; } ;


 TYPE_2__* SG (int ) ;
 char* apr_table_get (int ,char*) ;
 int server_context ;

__attribute__((used)) static char *
php_apache_sapi_getenv(char *name, size_t name_len)
{
 php_struct *ctx = SG(server_context);
 const char *env_var;

 if (ctx == ((void*)0)) {
  return ((void*)0);
 }

 env_var = apr_table_get(ctx->r->subprocess_env, name);

 return (char *) env_var;
}
