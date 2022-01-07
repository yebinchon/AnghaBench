
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int content_length; TYPE_3__* data; } ;
typedef TYPE_2__ php_http_parser ;
struct TYPE_5__ {scalar_t__ content_len; scalar_t__ content; } ;
struct TYPE_7__ {TYPE_1__ request; } ;
typedef TYPE_3__ php_cli_server_client ;


 int memmove (scalar_t__,char const*,size_t) ;
 scalar_t__ pemalloc (int ,int) ;
 scalar_t__ perealloc (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int php_cli_server_client_read_request_on_body(php_http_parser *parser, const char *at, size_t length)
{
 php_cli_server_client *client = parser->data;
 if (!client->request.content) {
  client->request.content = pemalloc(parser->content_length, 1);
  client->request.content_len = 0;
 }
 client->request.content = perealloc(client->request.content, client->request.content_len + length, 1);
 memmove(client->request.content + client->request.content_len, at, length);
 client->request.content_len += length;
 return 0;
}
