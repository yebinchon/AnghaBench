
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t len; } ;
struct TYPE_6__ {size_t len; } ;
struct TYPE_8__ {TYPE_2__ immortal; TYPE_1__ heap; } ;
struct TYPE_9__ {int type; TYPE_3__ data; } ;
typedef TYPE_4__ php_cli_server_chunk ;





__attribute__((used)) static size_t php_cli_server_chunk_size(const php_cli_server_chunk *chunk)
{
 switch (chunk->type) {
 case 129:
  return chunk->data.heap.len;
 case 128:
  return chunk->data.immortal.len;
 }
 return 0;
}
