
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ start_pos; } ;
typedef TYPE_1__ mrb_irep_debug_info_file ;
struct TYPE_6__ {scalar_t__ pc_count; int flen; TYPE_1__** files; } ;
typedef TYPE_2__ mrb_irep_debug_info ;
typedef int int32_t ;


 int mrb_assert (int) ;

__attribute__((used)) static mrb_irep_debug_info_file*
get_file(mrb_irep_debug_info *info, uint32_t pc)
{
  mrb_irep_debug_info_file **ret;
  int32_t count;

  if (pc >= info->pc_count) { return ((void*)0); }

  ret = info->files;
  count = info->flen;
  while (count > 0) {
    int32_t step = count / 2;
    mrb_irep_debug_info_file **it = ret + step;
    if (!(pc < (*it)->start_pos)) {
      ret = it + 1;
      count -= step + 1;
    }
    else { count = step; }
  }

  --ret;


  mrb_assert(info->files <= ret && ret < (info->files + info->flen));

  mrb_assert((*ret)->start_pos <= pc &&
             pc < (((ret + 1 - info->files) < info->flen)
                   ? (*(ret+1))->start_pos : info->pc_count));

  return *ret;
}
