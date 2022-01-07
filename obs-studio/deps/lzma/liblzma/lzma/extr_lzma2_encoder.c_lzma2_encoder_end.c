
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* lzma; } ;
typedef TYPE_1__ lzma_coder ;
typedef int lzma_allocator ;


 int lzma_free (TYPE_1__*,int *) ;

__attribute__((used)) static void
lzma2_encoder_end(lzma_coder *coder, lzma_allocator *allocator)
{
 lzma_free(coder->lzma, allocator);
 lzma_free(coder, allocator);
 return;
}
