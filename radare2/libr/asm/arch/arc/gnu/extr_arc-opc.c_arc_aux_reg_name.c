
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int value; char* name; } ;


 scalar_t__ AUXREG_AC ;
 TYPE_1__* arc_reg_names ;
 int arc_reg_names_count ;

char *
arc_aux_reg_name (int regVal)
{
  int i;

  for (i= arc_reg_names_count ; i > 0 ; i--)
    {
   if ((arc_reg_names[i].type == AUXREG_AC) && (arc_reg_names[i].value == regVal)) {
    return arc_reg_names[i].name;
   }
    }

  return ((void*)0);
}
