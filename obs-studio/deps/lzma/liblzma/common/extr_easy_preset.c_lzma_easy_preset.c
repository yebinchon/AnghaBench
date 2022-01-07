
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* filters; int opt_lzma; } ;
typedef TYPE_2__ lzma_options_easy ;
struct TYPE_4__ {int id; int * options; } ;


 int LZMA_FILTER_LZMA2 ;
 int LZMA_VLI_UNKNOWN ;
 scalar_t__ lzma_lzma_preset (int *,int ) ;

extern bool
lzma_easy_preset(lzma_options_easy *opt_easy, uint32_t preset)
{
 if (lzma_lzma_preset(&opt_easy->opt_lzma, preset))
  return 1;

 opt_easy->filters[0].id = LZMA_FILTER_LZMA2;
 opt_easy->filters[0].options = &opt_easy->opt_lzma;
 opt_easy->filters[1].id = LZMA_VLI_UNKNOWN;

 return 0;
}
