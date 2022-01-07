
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ lzma_vli ;
struct TYPE_5__ {scalar_t__ id; } ;
typedef TYPE_1__ lzma_filter_decoder ;


 size_t ARRAY_SIZE (TYPE_1__ const*) ;
 TYPE_1__ const* decoders ;

__attribute__((used)) static const lzma_filter_decoder *
decoder_find(lzma_vli id)
{
 for (size_t i = 0; i < ARRAY_SIZE(decoders); ++i)
  if (decoders[i].id == id)
   return decoders + i;

 return ((void*)0);
}
