
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum aarch64_field_kind { ____Placeholder_aarch64_field_kind } aarch64_field_kind ;
typedef int aarch64_insn ;


 int extract_field_2 (int *,int ,int ) ;
 int * fields ;

__attribute__((used)) static inline aarch64_insn
extract_field (enum aarch64_field_kind kind, aarch64_insn code,
        aarch64_insn mask)
{
  return extract_field_2 (&fields[kind], code, mask);
}
