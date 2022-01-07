
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int mrb_irep_debug_info_line ;
typedef int mrb_debug_line_type ;


 int mrb_debug_line_ary ;
 int mrb_debug_line_flat_map ;

__attribute__((used)) static mrb_debug_line_type
select_line_type(const uint16_t *lines, size_t lines_len)
{
  size_t line_count = 0;
  int prev_line = -1;
  size_t i;
  for (i = 0; i < lines_len; ++i) {
    if (lines[i] != prev_line) {
      ++line_count;
    }
  }
  return (sizeof(uint16_t) * lines_len) <= (sizeof(mrb_irep_debug_info_line) * line_count)
      ? mrb_debug_line_ary : mrb_debug_line_flat_map;
}
