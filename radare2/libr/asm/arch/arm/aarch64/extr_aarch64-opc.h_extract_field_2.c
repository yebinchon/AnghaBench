
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int aarch64_insn ;
struct TYPE_3__ {int lsb; int width; } ;
typedef TYPE_1__ aarch64_field ;


 int gen_mask (int ) ;

__attribute__((used)) static inline aarch64_insn
extract_field_2 (const aarch64_field *field, aarch64_insn code,
   aarch64_insn mask)
{
  aarch64_insn value;

  code &= ~mask;
  value = (code >> field->lsb) & gen_mask (field->width);
  return value;
}
