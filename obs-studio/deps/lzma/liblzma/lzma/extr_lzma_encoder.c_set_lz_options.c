
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int preset_dict_size; int preset_dict; int depth; int mf; int nice_len; int dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_6__ {int preset_dict_size; int preset_dict; int depth; int match_finder; int nice_len; int match_len_max; int after_size; int dict_size; int before_size; } ;
typedef TYPE_2__ lzma_lz_options ;


 int LOOP_INPUT_MAX ;
 int MATCH_LEN_MAX ;
 int OPTS ;

__attribute__((used)) static void
set_lz_options(lzma_lz_options *lz_options, const lzma_options_lzma *options)
{


 lz_options->before_size = OPTS;
 lz_options->dict_size = options->dict_size;
 lz_options->after_size = LOOP_INPUT_MAX;
 lz_options->match_len_max = MATCH_LEN_MAX;
 lz_options->nice_len = options->nice_len;
 lz_options->match_finder = options->mf;
 lz_options->depth = options->depth;
 lz_options->preset_dict = options->preset_dict;
 lz_options->preset_dict_size = options->preset_dict_size;
 return;
}
