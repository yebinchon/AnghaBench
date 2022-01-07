
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lc; scalar_t__ lp; scalar_t__ pb; } ;
typedef TYPE_1__ lzma_options_lzma ;


 scalar_t__ LZMA_LCLP_MAX ;
 scalar_t__ LZMA_PB_MAX ;

__attribute__((used)) static inline bool
is_lclppb_valid(const lzma_options_lzma *options)
{
 return options->lc <= LZMA_LCLP_MAX && options->lp <= LZMA_LCLP_MAX
   && options->lc + options->lp <= LZMA_LCLP_MAX
   && options->pb <= LZMA_PB_MAX;
}
