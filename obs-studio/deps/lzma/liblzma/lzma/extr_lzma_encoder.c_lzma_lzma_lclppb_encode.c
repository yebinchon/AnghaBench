
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int pb; int lp; int lc; } ;
typedef TYPE_1__ lzma_options_lzma ;


 int assert (int) ;
 int is_lclppb_valid (TYPE_1__ const*) ;

extern bool
lzma_lzma_lclppb_encode(const lzma_options_lzma *options, uint8_t *byte)
{
 if (!is_lclppb_valid(options))
  return 1;

 *byte = (options->pb * 5 + options->lp) * 9 + options->lc;
 assert(*byte <= (4 * 5 + 4) * 9 + 8);

 return 0;
}
