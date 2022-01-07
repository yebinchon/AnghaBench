
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ lzma_ret ;
typedef int lzma_next_coder ;
struct TYPE_9__ {int * init; int id; int options; } ;
typedef TYPE_1__ lzma_filter_info ;
typedef TYPE_2__* (* lzma_filter_find ) (int ) ;
struct TYPE_10__ {int * init; } ;
typedef TYPE_2__ lzma_filter_coder ;
struct TYPE_11__ {int options; int id; } ;
typedef TYPE_4__ lzma_filter ;
typedef int lzma_allocator ;


 int LZMA_FILTERS_MAX ;
 scalar_t__ const LZMA_OK ;
 scalar_t__ LZMA_OPTIONS_ERROR ;
 int LZMA_VLI_UNKNOWN ;
 int lzma_next_end (int *,int *) ;
 scalar_t__ lzma_next_filter_init (int *,int *,TYPE_1__*) ;
 int return_if_error (int ) ;
 int validate_chain (TYPE_4__ const*,size_t*) ;

extern lzma_ret
lzma_raw_coder_init(lzma_next_coder *next, lzma_allocator *allocator,
  const lzma_filter *options,
  lzma_filter_find coder_find, bool is_encoder)
{

 size_t count;
 return_if_error(validate_chain(options, &count));


 lzma_filter_info filters[LZMA_FILTERS_MAX + 1];
 if (is_encoder) {
  for (size_t i = 0; i < count; ++i) {



   const size_t j = count - i - 1;

   const lzma_filter_coder *const fc
     = coder_find(options[i].id);
   if (fc == ((void*)0) || fc->init == ((void*)0))
    return LZMA_OPTIONS_ERROR;

   filters[j].id = options[i].id;
   filters[j].init = fc->init;
   filters[j].options = options[i].options;
  }
 } else {
  for (size_t i = 0; i < count; ++i) {
   const lzma_filter_coder *const fc
     = coder_find(options[i].id);
   if (fc == ((void*)0) || fc->init == ((void*)0))
    return LZMA_OPTIONS_ERROR;

   filters[i].id = options[i].id;
   filters[i].init = fc->init;
   filters[i].options = options[i].options;
  }
 }


 filters[count].id = LZMA_VLI_UNKNOWN;
 filters[count].init = ((void*)0);


 const lzma_ret ret = lzma_next_filter_init(next, allocator, filters);
 if (ret != LZMA_OK)
  lzma_next_end(next, allocator);

 return ret;
}
