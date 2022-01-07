
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int lzma_coder ;


 scalar_t__ lzma_lzma_decoder_memusage_nocheck (void const*) ;

extern uint64_t
lzma_lzma2_decoder_memusage(const void *options)
{
 return sizeof(lzma_coder)
   + lzma_lzma_decoder_memusage_nocheck(options);
}
