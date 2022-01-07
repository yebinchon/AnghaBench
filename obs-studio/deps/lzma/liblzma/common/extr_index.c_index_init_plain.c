
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ checks; int prealloc; scalar_t__ index_list_size; scalar_t__ record_count; scalar_t__ total_size; scalar_t__ uncompressed_size; int streams; } ;
typedef TYPE_1__ lzma_index ;
typedef int lzma_allocator ;


 int INDEX_GROUP_SIZE ;
 int index_tree_init (int *) ;
 TYPE_1__* lzma_alloc (int,int *) ;

__attribute__((used)) static lzma_index *
index_init_plain(lzma_allocator *allocator)
{
 lzma_index *i = lzma_alloc(sizeof(lzma_index), allocator);
 if (i != ((void*)0)) {
  index_tree_init(&i->streams);
  i->uncompressed_size = 0;
  i->total_size = 0;
  i->record_count = 0;
  i->index_list_size = 0;
  i->prealloc = INDEX_GROUP_SIZE;
  i->checks = 0;
 }

 return i;
}
