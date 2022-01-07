
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* p; size_t len; } ;
struct TYPE_7__ {TYPE_1__ immortal; } ;
struct TYPE_8__ {TYPE_2__ data; int * next; int type; } ;
typedef TYPE_3__ php_cli_server_chunk ;


 int PHP_CLI_SERVER_CHUNK_IMMORTAL ;
 TYPE_3__* pemalloc (int,int) ;

__attribute__((used)) static php_cli_server_chunk *php_cli_server_chunk_immortal_new(const char *buf, size_t len)
{
 php_cli_server_chunk *chunk = pemalloc(sizeof(php_cli_server_chunk), 1);

 chunk->type = PHP_CLI_SERVER_CHUNK_IMMORTAL;
 chunk->next = ((void*)0);
 chunk->data.immortal.p = buf;
 chunk->data.immortal.len = len;
 return chunk;
}
