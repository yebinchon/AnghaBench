
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* filters; } ;
typedef TYPE_2__ lzma_block ;
typedef int lzma_allocator ;
struct TYPE_4__ {int * options; int id; } ;


 size_t LZMA_FILTERS_MAX ;
 int LZMA_VLI_UNKNOWN ;
 int lzma_free (int *,int *) ;

__attribute__((used)) static void
free_properties(lzma_block *block, lzma_allocator *allocator)
{



 for (size_t i = 0; i < LZMA_FILTERS_MAX; ++i) {
  lzma_free(block->filters[i].options, allocator);
  block->filters[i].id = LZMA_VLI_UNKNOWN;
  block->filters[i].options = ((void*)0);
 }

 return;
}
