
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_9__ {int dist; } ;
typedef TYPE_1__ lzma_options_delta ;
struct TYPE_10__ {TYPE_8__* coder; int * end; } ;
typedef TYPE_2__ lzma_next_coder ;
struct TYPE_11__ {TYPE_1__* options; } ;
typedef TYPE_3__ lzma_filter_info ;
typedef int lzma_coder ;
typedef int lzma_allocator ;
struct TYPE_12__ {int next; int history; scalar_t__ pos; int distance; } ;


 int LZMA_DELTA_DIST_MAX ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OPTIONS_ERROR ;
 scalar_t__ UINT64_MAX ;
 int delta_coder_end ;
 TYPE_8__* lzma_alloc (int,int *) ;
 scalar_t__ lzma_delta_coder_memusage (TYPE_1__*) ;
 int lzma_next_filter_init (int *,int *,TYPE_3__ const*) ;
 int memzero (int ,int ) ;

extern lzma_ret
lzma_delta_coder_init(lzma_next_coder *next, lzma_allocator *allocator,
  const lzma_filter_info *filters)
{

 if (next->coder == ((void*)0)) {
  next->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (next->coder == ((void*)0))
   return LZMA_MEM_ERROR;


  next->end = &delta_coder_end;
  next->coder->next = LZMA_NEXT_CODER_INIT;
 }


 if (lzma_delta_coder_memusage(filters[0].options) == UINT64_MAX)
  return LZMA_OPTIONS_ERROR;


 const lzma_options_delta *opt = filters[0].options;
 next->coder->distance = opt->dist;


 next->coder->pos = 0;
 memzero(next->coder->history, LZMA_DELTA_DIST_MAX);


 return lzma_next_filter_init(&next->coder->next,
   allocator, filters + 1);
}
