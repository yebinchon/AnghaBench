
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ php_cli_server_chunk ;
struct TYPE_7__ {TYPE_1__* first; } ;
typedef TYPE_2__ php_cli_server_buffer ;


 int pefree (TYPE_1__*,int) ;
 int php_cli_server_chunk_dtor (TYPE_1__*) ;

__attribute__((used)) static void php_cli_server_buffer_dtor(php_cli_server_buffer *buffer)
{
 php_cli_server_chunk *chunk, *next;
 for (chunk = buffer->first; chunk; chunk = next) {
  next = chunk->next;
  php_cli_server_chunk_dtor(chunk);
  pefree(chunk, 1);
 }
}
