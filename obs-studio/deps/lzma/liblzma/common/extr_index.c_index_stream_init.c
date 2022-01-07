
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* lzma_vli ;
typedef int lzma_allocator ;
struct TYPE_7__ {int version; } ;
struct TYPE_6__ {int * right; int * left; int * parent; void* compressed_base; void* uncompressed_base; } ;
struct TYPE_8__ {scalar_t__ stream_padding; TYPE_2__ stream_flags; scalar_t__ index_list_size; scalar_t__ record_count; int groups; void* block_number_base; void* number; TYPE_1__ node; } ;
typedef TYPE_3__ index_stream ;


 int UINT32_MAX ;
 int index_tree_init (int *) ;
 TYPE_3__* lzma_alloc (int,int *) ;

__attribute__((used)) static index_stream *
index_stream_init(lzma_vli compressed_base, lzma_vli uncompressed_base,
  lzma_vli stream_number, lzma_vli block_number_base,
  lzma_allocator *allocator)
{
 index_stream *s = lzma_alloc(sizeof(index_stream), allocator);
 if (s == ((void*)0))
  return ((void*)0);

 s->node.uncompressed_base = uncompressed_base;
 s->node.compressed_base = compressed_base;
 s->node.parent = ((void*)0);
 s->node.left = ((void*)0);
 s->node.right = ((void*)0);

 s->number = stream_number;
 s->block_number_base = block_number_base;

 index_tree_init(&s->groups);

 s->record_count = 0;
 s->index_list_size = 0;
 s->stream_flags.version = UINT32_MAX;
 s->stream_padding = 0;

 return s;
}
