
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int method; TYPE_3__* data; } ;
typedef TYPE_2__ php_http_parser ;
struct TYPE_5__ {size_t request_uri_len; int request_uri; int request_method; } ;
struct TYPE_7__ {TYPE_1__ request; } ;
typedef TYPE_3__ php_cli_server_client ;


 int pestrndup (char const*,size_t,int) ;

__attribute__((used)) static int php_cli_server_client_read_request_on_url(php_http_parser *parser, const char *at, size_t length)
{
 php_cli_server_client *client = parser->data;
 client->request.request_method = parser->method;
 client->request.request_uri = pestrndup(at, length, 1);
 client->request.request_uri_len = length;
 return 0;
}
