
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* coder; int * end; } ;
struct TYPE_6__ {TYPE_1__ lzma; } ;
typedef TYPE_2__ lzma_coder ;
typedef int lzma_allocator ;


 int assert (int ) ;
 int lzma_free (TYPE_2__*,int *) ;

__attribute__((used)) static void
lzma2_decoder_end(lzma_coder *coder, lzma_allocator *allocator)
{
 assert(coder->lzma.end == ((void*)0));
 lzma_free(coder->lzma.coder, allocator);

 lzma_free(coder, allocator);

 return;
}
