
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ dist; } ;
typedef TYPE_1__ lzma_options_delta ;
typedef int lzma_coder ;


 scalar_t__ LZMA_DELTA_DIST_MAX ;
 scalar_t__ LZMA_DELTA_DIST_MIN ;
 scalar_t__ LZMA_DELTA_TYPE_BYTE ;
 int UINT64_MAX ;

extern uint64_t
lzma_delta_coder_memusage(const void *options)
{
 const lzma_options_delta *opt = options;

 if (opt == ((void*)0) || opt->type != LZMA_DELTA_TYPE_BYTE
   || opt->dist < LZMA_DELTA_DIST_MIN
   || opt->dist > LZMA_DELTA_DIST_MAX)
  return UINT64_MAX;

 return sizeof(lzma_coder);
}
