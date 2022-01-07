
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* filters; int index; int index_encoder; int block_encoder; } ;
typedef TYPE_2__ lzma_coder ;
typedef int lzma_allocator ;
struct TYPE_5__ {scalar_t__ id; TYPE_2__* options; } ;


 scalar_t__ LZMA_VLI_UNKNOWN ;
 int lzma_free (TYPE_2__*,int *) ;
 int lzma_index_end (int ,int *) ;
 int lzma_next_end (int *,int *) ;

__attribute__((used)) static void
stream_encoder_end(lzma_coder *coder, lzma_allocator *allocator)
{
 lzma_next_end(&coder->block_encoder, allocator);
 lzma_next_end(&coder->index_encoder, allocator);
 lzma_index_end(coder->index, allocator);

 for (size_t i = 0; coder->filters[i].id != LZMA_VLI_UNKNOWN; ++i)
  lzma_free(coder->filters[i].options, allocator);

 lzma_free(coder, allocator);
 return;
}
