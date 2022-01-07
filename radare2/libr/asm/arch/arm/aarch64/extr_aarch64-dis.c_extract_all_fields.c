
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum aarch64_field_kind { ____Placeholder_aarch64_field_kind } aarch64_field_kind ;
struct TYPE_4__ {scalar_t__* fields; } ;
typedef TYPE_1__ aarch64_operand ;
typedef int aarch64_insn ;
struct TYPE_5__ {int width; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ FLD_NIL ;
 int extract_field (int,int ,int ) ;
 TYPE_2__* fields ;

__attribute__((used)) static aarch64_insn
extract_all_fields (const aarch64_operand *self, aarch64_insn code)
{
  aarch64_insn value;
  unsigned int i;
  enum aarch64_field_kind kind;

  value = 0;
  for (i = 0; i < ARRAY_SIZE (self->fields) && self->fields[i] != FLD_NIL; ++i)
    {
      kind = self->fields[i];
      value <<= fields[kind].width;
      value |= extract_field (kind, code, 0);
    }
  return value;
}
