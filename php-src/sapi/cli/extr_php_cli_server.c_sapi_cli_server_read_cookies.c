
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int headers; } ;
struct TYPE_5__ {TYPE_1__ request; } ;
typedef TYPE_2__ php_cli_server_client ;


 TYPE_2__* SG (int ) ;
 int server_context ;
 char* zend_hash_str_find_ptr (int *,char*,int) ;

__attribute__((used)) static char *sapi_cli_server_read_cookies(void)
{
 php_cli_server_client *client = SG(server_context);
 char *val;
 if (((void*)0) == (val = zend_hash_str_find_ptr(&client->request.headers, "cookie", sizeof("cookie")-1))) {
  return ((void*)0);
 }
 return val;
}
