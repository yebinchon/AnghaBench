
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* fmt; } ;
typedef TYPE_1__ hexagon_operand ;


 size_t hexagon_operand_count ;
 TYPE_1__* hexagon_operands ;
 int sprintf (char*,char*,char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static const hexagon_operand *
hexagon_operand_find_xx16
(const hexagon_operand *operand, char *suffix)
{
  char buf[100];
  size_t i;

  sprintf(buf, "%s%s", operand->fmt, suffix);
  for (i = 0; i < hexagon_operand_count; i++) {
    const hexagon_operand *oper = &hexagon_operands[i];
    if (!strcmp(oper->fmt, buf)) {
      return oper;
    }
  }
  return ((void*)0);
}
