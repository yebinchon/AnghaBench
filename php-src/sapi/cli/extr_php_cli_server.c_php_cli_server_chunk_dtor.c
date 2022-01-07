
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* block; } ;
struct TYPE_7__ {TYPE_1__ heap; } ;
struct TYPE_8__ {int type; TYPE_2__ data; } ;
typedef TYPE_3__ php_cli_server_chunk ;




 int pefree (TYPE_3__*,int) ;

__attribute__((used)) static void php_cli_server_chunk_dtor(php_cli_server_chunk *chunk)
{
 switch (chunk->type) {
 case 129:
  if (chunk->data.heap.block != chunk) {
   pefree(chunk->data.heap.block, 1);
  }
  break;
 case 128:
  break;
 }
}
