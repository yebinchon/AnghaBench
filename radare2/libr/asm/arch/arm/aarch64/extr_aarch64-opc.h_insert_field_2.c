
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int aarch64_insn ;
struct TYPE_3__ {int width; int lsb; } ;
typedef TYPE_1__ aarch64_field ;


 int assert (int) ;
 int gen_mask (int) ;

__attribute__((used)) static inline void
insert_field_2 (const aarch64_field *field, aarch64_insn *code,
  aarch64_insn value, aarch64_insn mask)
{
  assert (field->width < 32 && field->width >= 1 && field->lsb >= 0
   && field->lsb + field->width <= 32);
  value &= gen_mask (field->width);
  value <<= field->lsb;


  value &= ~mask;
  *code |= value;
}
