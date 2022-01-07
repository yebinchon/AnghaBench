
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* r; } ;
typedef TYPE_2__ php_struct ;
struct TYPE_4__ {int headers_in; } ;


 TYPE_2__* SG (int ) ;
 char* apr_table_get (int ,char*) ;
 int server_context ;

__attribute__((used)) static char *
php_apache_sapi_read_cookies(void)
{
 php_struct *ctx = SG(server_context);
 const char *http_cookie;

 http_cookie = apr_table_get(ctx->r->headers_in, "cookie");


 return (char *) http_cookie;
}
