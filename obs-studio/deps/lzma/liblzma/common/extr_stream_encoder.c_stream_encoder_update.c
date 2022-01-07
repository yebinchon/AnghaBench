
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ lzma_ret ;
struct TYPE_15__ {scalar_t__ id; int options; } ;
typedef TYPE_3__ lzma_filter ;
struct TYPE_14__ {int coder; int (* update ) (int ,int *,TYPE_3__ const*,TYPE_3__ const*) ;} ;
struct TYPE_13__ {TYPE_3__* filters; } ;
struct TYPE_16__ {scalar_t__ sequence; int block_encoder_is_initialized; TYPE_3__* filters; TYPE_2__ block_encoder; TYPE_1__ block_options; } ;
typedef TYPE_4__ lzma_coder ;
typedef int lzma_allocator ;


 scalar_t__ const LZMA_OK ;
 scalar_t__ LZMA_PROG_ERROR ;
 scalar_t__ LZMA_VLI_UNKNOWN ;
 scalar_t__ SEQ_BLOCK_ENCODE ;
 scalar_t__ SEQ_BLOCK_INIT ;
 scalar_t__ block_encoder_init (TYPE_4__*,int *) ;
 scalar_t__ lzma_filters_copy (TYPE_3__ const*,TYPE_3__*,int *) ;
 int lzma_free (int ,int *) ;
 int return_if_error (int ) ;
 int stub1 (int ,int *,TYPE_3__ const*,TYPE_3__ const*) ;

__attribute__((used)) static lzma_ret
stream_encoder_update(lzma_coder *coder, lzma_allocator *allocator,
  const lzma_filter *filters,
  const lzma_filter *reversed_filters)
{
 if (coder->sequence <= SEQ_BLOCK_INIT) {




  coder->block_encoder_is_initialized = 0;
  coder->block_options.filters = (lzma_filter *)(filters);
  const lzma_ret ret = block_encoder_init(coder, allocator);
  coder->block_options.filters = coder->filters;
  if (ret != LZMA_OK)
   return ret;

  coder->block_encoder_is_initialized = 1;

 } else if (coder->sequence <= SEQ_BLOCK_ENCODE) {


  return_if_error(coder->block_encoder.update(
    coder->block_encoder.coder, allocator,
    filters, reversed_filters));
 } else {


  return LZMA_PROG_ERROR;
 }


 for (size_t i = 0; coder->filters[i].id != LZMA_VLI_UNKNOWN; ++i)
  lzma_free(coder->filters[i].options, allocator);

 return lzma_filters_copy(filters, coder->filters, allocator);
}
