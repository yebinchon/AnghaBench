
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* fmt; } ;
typedef TYPE_1__ hexagon_operand ;


 char* alloca (scalar_t__) ;
 size_t hexagon_operand_count ;
 TYPE_1__ const* hexagon_operands ;
 int strcat (char*,char const*) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

const hexagon_operand *
hexagon_operand_find
(const hexagon_operand *operand, const char *suffix)
{
  size_t i;
  char *buf;

  buf = alloca (strlen (operand->fmt) + strlen (suffix) + 1);
  strcpy (buf, operand->fmt);
  strcat (buf, suffix);

  for (i = 0; i < hexagon_operand_count; i++)
    if (!strcmp (hexagon_operands [i].fmt, buf))
      return (hexagon_operands + i);

  return ((void*)0);
}
