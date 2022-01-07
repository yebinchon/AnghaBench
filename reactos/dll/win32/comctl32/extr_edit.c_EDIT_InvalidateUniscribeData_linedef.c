
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ssa; } ;
typedef TYPE_1__ LINEDEF ;


 int ScriptStringFree (int **) ;

__attribute__((used)) static inline void EDIT_InvalidateUniscribeData_linedef(LINEDEF *line_def)
{
 if (line_def->ssa)
 {
  ScriptStringFree(&line_def->ssa);
  line_def->ssa = ((void*)0);
 }
}
