
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* coder; int (* end ) (TYPE_3__*,int *) ;} ;
struct TYPE_7__ {TYPE_3__* buf; } ;
struct TYPE_9__ {TYPE_2__ lz; TYPE_1__ dict; int next; } ;
typedef TYPE_3__ lzma_coder ;
typedef int lzma_allocator ;


 int lzma_free (TYPE_3__*,int *) ;
 int lzma_next_end (int *,int *) ;
 int stub1 (TYPE_3__*,int *) ;

__attribute__((used)) static void
lz_decoder_end(lzma_coder *coder, lzma_allocator *allocator)
{
 lzma_next_end(&coder->next, allocator);
 lzma_free(coder->dict.buf, allocator);

 if (coder->lz.end != ((void*)0))
  coder->lz.end(coder->lz.coder, allocator);
 else
  lzma_free(coder->lz.coder, allocator);

 lzma_free(coder, allocator);
 return;
}
