
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_5__ {size_t* ary; TYPE_2__* flat_map; } ;
struct TYPE_7__ {size_t line_entry_count; scalar_t__ line_type; TYPE_1__ lines; } ;
typedef TYPE_3__ mrb_irep_debug_info_file ;
struct TYPE_6__ {size_t line; } ;


 scalar_t__ mrb_debug_line_ary ;

__attribute__((used)) static uint16_t
check_lineno(mrb_irep_debug_info_file *info_file, uint16_t lineno)
{
  uint32_t count = info_file->line_entry_count;
  uint16_t l_idx;

  if (info_file->line_type == mrb_debug_line_ary) {
    for (l_idx = 0; l_idx < count; ++l_idx) {
      if (lineno == info_file->lines.ary[l_idx]) {
        return lineno;
      }
    }
  }
  else {
    for (l_idx = 0; l_idx < count; ++l_idx) {
      if (lineno == info_file->lines.flat_map[l_idx].line) {
        return lineno;
      }
    }
  }

  return 0;
}
