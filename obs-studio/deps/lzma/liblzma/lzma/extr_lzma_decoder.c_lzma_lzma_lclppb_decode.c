
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int pb; int lp; int lc; } ;
typedef TYPE_1__ lzma_options_lzma ;


 int LZMA_LCLP_MAX ;

extern bool
lzma_lzma_lclppb_decode(lzma_options_lzma *options, uint8_t byte)
{
 if (byte > (4 * 5 + 4) * 9 + 8)
  return 1;


 options->pb = byte / (9 * 5);
 byte -= options->pb * 9 * 5;
 options->lp = byte / 9;
 options->lc = byte - options->lp * 9;

 return options->lc + options->lp > LZMA_LCLP_MAX;
}
