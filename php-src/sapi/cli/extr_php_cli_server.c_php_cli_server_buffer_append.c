
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ php_cli_server_chunk ;
struct TYPE_6__ {TYPE_1__* last; TYPE_1__* first; } ;
typedef TYPE_2__ php_cli_server_buffer ;



__attribute__((used)) static void php_cli_server_buffer_append(php_cli_server_buffer *buffer, php_cli_server_chunk *chunk)
{
 php_cli_server_chunk *last;
 for (last = chunk; last->next; last = last->next);
 if (!buffer->last) {
  buffer->first = chunk;
 } else {
  buffer->last->next = chunk;
 }
 buffer->last = last;
}
