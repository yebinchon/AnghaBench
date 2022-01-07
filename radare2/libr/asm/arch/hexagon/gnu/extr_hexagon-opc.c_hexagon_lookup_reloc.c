
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ reloc_kxed; scalar_t__ reloc_type; int fmt; int enc_letter; } ;
typedef TYPE_1__ hexagon_operand ;
struct TYPE_7__ {int attributes; int syntax; } ;
typedef TYPE_2__ hexagon_opcode ;
typedef scalar_t__ bfd_reloc_code_real_type ;


 scalar_t__ BFD_RELOC_NONE ;


 int HEXAGON_OPERAND_IS_IMMEDIATE ;
 int HEXAGON_OPERAND_IS_KXED ;
 int TOLOWER (int ) ;
 int TOUPPER (int ) ;
 size_t hexagon_operand_count ;
 TYPE_1__ const* hexagon_operands ;
 int strstr (int ,int ) ;

const hexagon_operand *
hexagon_lookup_reloc
(bfd_reloc_code_real_type reloc_type, int flags, const hexagon_opcode *opcode)
{
  bfd_reloc_code_real_type r;
  size_t i;

  if (reloc_type == BFD_RELOC_NONE || !opcode)
    return ((void*)0);

  for (i = 0; i < hexagon_operand_count; i++)
    {
      if (flags & HEXAGON_OPERAND_IS_KXED)
        {
          if (hexagon_operands [i].flags & HEXAGON_OPERAND_IS_IMMEDIATE)
            switch (opcode->attributes
                    & (129
                       | 128))
              {
              case 129:
                if (hexagon_operands [i].enc_letter
                    != TOLOWER (hexagon_operands [i].enc_letter)
                    || !strstr (opcode->syntax, hexagon_operands [i].fmt))
                  continue;

                break;

              case 128:
                if (hexagon_operands [i].enc_letter
                    != TOUPPER (hexagon_operands [i].enc_letter)
                    || !strstr (opcode->syntax, hexagon_operands [i].fmt))
                  continue;

                break;
              }

          r = hexagon_operands [i].reloc_kxed;
        }
      else
        r = hexagon_operands [i].reloc_type;

      if (r == reloc_type)
        return (hexagon_operands + i);
    }

  return ((void*)0);
}
