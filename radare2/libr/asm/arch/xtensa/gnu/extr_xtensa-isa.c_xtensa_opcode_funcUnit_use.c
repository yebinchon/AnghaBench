
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t xtensa_opcode ;
struct TYPE_5__ {TYPE_1__* opcodes; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int xtensa_funcUnit_use ;
struct TYPE_4__ {int num_funcUnit_uses; char* name; int * funcUnit_uses; } ;


 int CHECK_OPCODE (TYPE_2__*,size_t,int *) ;
 int sprintf (int ,char*,int,char*,int) ;
 int xtensa_isa_bad_funcUnit ;
 int xtisa_errno ;
 int xtisa_error_msg ;

xtensa_funcUnit_use *
xtensa_opcode_funcUnit_use (xtensa_isa isa, xtensa_opcode opc, int u)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  CHECK_OPCODE (intisa, opc, ((void*)0));
  if (u < 0 || u >= intisa->opcodes[opc].num_funcUnit_uses)
    {
      xtisa_errno = xtensa_isa_bad_funcUnit;
      sprintf (xtisa_error_msg, "invalid functional unit use number (%d); "
        "opcode \"%s\" has %d", u, intisa->opcodes[opc].name,
        intisa->opcodes[opc].num_funcUnit_uses);
      return ((void*)0);
    }
  return &intisa->opcodes[opc].funcUnit_uses[u];
}
