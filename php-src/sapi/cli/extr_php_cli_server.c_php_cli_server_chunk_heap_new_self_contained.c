
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* p; size_t len; TYPE_3__* block; } ;
struct TYPE_7__ {TYPE_1__ heap; } ;
struct TYPE_8__ {TYPE_2__ data; int * next; int type; } ;
typedef TYPE_3__ php_cli_server_chunk ;


 int PHP_CLI_SERVER_CHUNK_HEAP ;
 TYPE_3__* pemalloc (int,int) ;

__attribute__((used)) static php_cli_server_chunk *php_cli_server_chunk_heap_new_self_contained(size_t len)
{
 php_cli_server_chunk *chunk = pemalloc(sizeof(php_cli_server_chunk) + len, 1);

 chunk->type = PHP_CLI_SERVER_CHUNK_HEAP;
 chunk->next = ((void*)0);
 chunk->data.heap.block = chunk;
 chunk->data.heap.p = (char *)(chunk + 1);
 chunk->data.heap.len = len;
 return chunk;
}
