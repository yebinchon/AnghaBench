
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_coder ;
typedef int lzma_allocator ;


 int lzma_free (int *,int *) ;

__attribute__((used)) static void
index_encoder_end(lzma_coder *coder, lzma_allocator *allocator)
{
 lzma_free(coder, allocator);
 return;
}
