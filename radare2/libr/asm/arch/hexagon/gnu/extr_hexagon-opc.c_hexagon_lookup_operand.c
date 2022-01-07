
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fmt; } ;
typedef TYPE_1__ hexagon_operand ;


 size_t hexagon_operand_count ;
 TYPE_1__ const* hexagon_operands ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (int ) ;
 int strncmp (char const*,int ,size_t) ;

const hexagon_operand *
hexagon_lookup_operand
(const char *name)
{
  size_t op_len, fm_len;
  size_t i;


  op_len = strcspn (name, " .,");

  for (i = 0; i < hexagon_operand_count; i++)
    {
      fm_len = strlen (hexagon_operands [i].fmt);

      if (op_len == fm_len && !strncmp (name, hexagon_operands [i].fmt, op_len))
        return (hexagon_operands + i);
    }

  return ((void*)0);
}
