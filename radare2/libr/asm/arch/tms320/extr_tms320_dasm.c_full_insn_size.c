
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
typedef TYPE_1__ tms320_dasm_t ;


 scalar_t__ field_value (TYPE_1__*,int ) ;
 int q_cr ;
 int q_lr ;

__attribute__((used)) static int full_insn_size(tms320_dasm_t * dasm)
{
 int qualifier_size = 0;

 if (field_value (dasm, q_cr)) {
  qualifier_size = 1;
 }
 if (field_value (dasm, q_lr)) {
  qualifier_size = 1;
 }

 return dasm->length + qualifier_size;
}
