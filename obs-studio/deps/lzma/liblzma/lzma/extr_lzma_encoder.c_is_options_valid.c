
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nice_len; scalar_t__ mode; } ;
typedef TYPE_1__ lzma_options_lzma ;


 scalar_t__ LZMA_MODE_FAST ;
 scalar_t__ LZMA_MODE_NORMAL ;
 scalar_t__ MATCH_LEN_MAX ;
 scalar_t__ MATCH_LEN_MIN ;
 scalar_t__ is_lclppb_valid (TYPE_1__ const*) ;

__attribute__((used)) static bool
is_options_valid(const lzma_options_lzma *options)
{


 return is_lclppb_valid(options)
   && options->nice_len >= MATCH_LEN_MIN
   && options->nice_len <= MATCH_LEN_MAX
   && (options->mode == LZMA_MODE_FAST
    || options->mode == LZMA_MODE_NORMAL);
}
