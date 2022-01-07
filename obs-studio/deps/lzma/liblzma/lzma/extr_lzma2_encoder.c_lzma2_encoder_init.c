
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_9__ {scalar_t__ preset_dict_size; int * preset_dict; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_10__ {scalar_t__ before_size; scalar_t__ dict_size; } ;
typedef TYPE_2__ lzma_lz_options ;
struct TYPE_11__ {TYPE_6__* coder; int * options_update; int * end; int * code; } ;
typedef TYPE_3__ lzma_lz_encoder ;
typedef int lzma_coder ;
typedef int lzma_allocator ;
struct TYPE_12__ {int need_properties; int need_state_reset; int need_dictionary_reset; TYPE_1__ opt_cur; int * lzma; int sequence; } ;


 scalar_t__ LZMA2_CHUNK_MAX ;
 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int LZMA_PROG_ERROR ;
 int SEQ_INIT ;
 int lzma2_encode ;
 int lzma2_encoder_end ;
 int lzma2_encoder_options_update ;
 TYPE_6__* lzma_alloc (int,int *) ;
 int lzma_lzma_encoder_create (int **,int *,TYPE_1__*,TYPE_2__*) ;
 int return_if_error (int ) ;

__attribute__((used)) static lzma_ret
lzma2_encoder_init(lzma_lz_encoder *lz, lzma_allocator *allocator,
  const void *options, lzma_lz_options *lz_options)
{
 if (options == ((void*)0))
  return LZMA_PROG_ERROR;

 if (lz->coder == ((void*)0)) {
  lz->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (lz->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  lz->code = &lzma2_encode;
  lz->end = &lzma2_encoder_end;
  lz->options_update = &lzma2_encoder_options_update;

  lz->coder->lzma = ((void*)0);
 }

 lz->coder->opt_cur = *(const lzma_options_lzma *)(options);

 lz->coder->sequence = SEQ_INIT;
 lz->coder->need_properties = 1;
 lz->coder->need_state_reset = 0;
 lz->coder->need_dictionary_reset
   = lz->coder->opt_cur.preset_dict == ((void*)0)
   || lz->coder->opt_cur.preset_dict_size == 0;


 return_if_error(lzma_lzma_encoder_create(&lz->coder->lzma, allocator,
   &lz->coder->opt_cur, lz_options));






 if (lz_options->before_size + lz_options->dict_size < LZMA2_CHUNK_MAX)
  lz_options->before_size
    = LZMA2_CHUNK_MAX - lz_options->dict_size;

 return LZMA_OK;
}
