
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ php_http_parser ;
struct TYPE_6__ {int last_header_element; char* current_header_value; int current_header_value_len; } ;
typedef TYPE_2__ php_cli_server_client ;





 char* pemalloc (int,int) ;
 int php_cli_server_client_save_header (TYPE_2__*) ;

__attribute__((used)) static int php_cli_server_client_read_request_on_headers_complete(php_http_parser *parser)
{
 php_cli_server_client *client = parser->data;
 switch (client->last_header_element) {
 case 129:
  break;
 case 130:
  client->current_header_value = pemalloc(1, 1);
  *client->current_header_value = '\0';
  client->current_header_value_len = 0;

 case 128:
  php_cli_server_client_save_header(client);
  break;
 }
 client->last_header_element = 129;
 return 0;
}
