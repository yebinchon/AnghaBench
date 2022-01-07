
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next; } ;
typedef TYPE_1__ lzma_coder ;
typedef int lzma_allocator ;


 int lzma_free (TYPE_1__*,int *) ;
 int lzma_next_end (int *,int *) ;

__attribute__((used)) static void
block_decoder_end(lzma_coder *coder, lzma_allocator *allocator)
{
 lzma_next_end(&coder->next, allocator);
 lzma_free(coder, allocator);
 return;
}
