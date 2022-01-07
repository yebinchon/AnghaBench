
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t* fields; } ;
typedef TYPE_1__ aarch64_operand ;
struct TYPE_5__ {scalar_t__ width; } ;


 size_t FLD_NIL ;
 int assert (int) ;
 TYPE_3__* fields ;

__attribute__((used)) static inline unsigned
get_operand_fields_width (const aarch64_operand *operand)
{
  int i = 0;
  unsigned width = 0;
  while (operand->fields[i] != FLD_NIL)
    width += fields[operand->fields[i++]].width;
  assert (width > 0 && width < 32);
  return width;
}
