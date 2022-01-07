
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t content; size_t content_len; } ;
struct TYPE_5__ {size_t post_read_offset; TYPE_1__ request; } ;
typedef TYPE_2__ php_cli_server_client ;


 size_t MIN (size_t,size_t) ;
 TYPE_2__* SG (int ) ;
 int memmove (char*,size_t,size_t) ;
 int server_context ;

__attribute__((used)) static size_t sapi_cli_server_read_post(char *buf, size_t count_bytes)
{
 php_cli_server_client *client = SG(server_context);
 if (client->request.content) {
  size_t content_len = client->request.content_len;
  size_t nbytes_copied = MIN(client->post_read_offset + count_bytes, content_len) - client->post_read_offset;
  memmove(buf, client->request.content + client->post_read_offset, nbytes_copied);
  client->post_read_offset += nbytes_copied;
  return nbytes_copied;
 }
 return 0;
}
