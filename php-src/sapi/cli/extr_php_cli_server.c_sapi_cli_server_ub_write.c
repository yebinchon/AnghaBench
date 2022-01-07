
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_cli_server_client ;


 int * SG (int ) ;
 size_t php_cli_server_client_send_through (int *,char const*,size_t) ;
 int server_context ;

__attribute__((used)) static size_t sapi_cli_server_ub_write(const char *str, size_t str_length)
{
 php_cli_server_client *client = SG(server_context);
 if (!client) {
  return 0;
 }
 return php_cli_server_client_send_through(client, str, str_length);
}
