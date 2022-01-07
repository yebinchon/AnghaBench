
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dotted_lines; } ;


 char* DASHED_LINE_HORIZ ;
 char* DOTTED_LINE_HORIZ ;



 char* RUNECODESTR_LINE_HORIZ ;
 TYPE_1__* r_cons_singleton () ;

__attribute__((used)) static char* utf8_line_horiz (int dot_style) {
 if (r_cons_singleton ()->dotted_lines) {
  switch (dot_style) {
  case 128: return RUNECODESTR_LINE_HORIZ;
  case 129: return DOTTED_LINE_HORIZ;
  case 130: return DASHED_LINE_HORIZ;
  }
 }
 return RUNECODESTR_LINE_HORIZ;
}
