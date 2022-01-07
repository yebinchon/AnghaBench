
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xtensa_opcode ;
struct TYPE_8__ {TYPE_2__* slots; TYPE_1__* formats; } ;
typedef TYPE_3__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef size_t xtensa_format ;
struct TYPE_7__ {int nop_name; } ;
struct TYPE_6__ {int* slot_id; } ;


 int CHECK_FORMAT (TYPE_3__*,size_t,int ) ;
 int CHECK_SLOT (TYPE_3__*,size_t,int,int ) ;
 int XTENSA_UNDEFINED ;
 int xtensa_opcode_lookup (scalar_t__,int ) ;

xtensa_opcode
xtensa_format_slot_nop_opcode (xtensa_isa isa, xtensa_format fmt, int slot)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int slot_id;

  CHECK_FORMAT (intisa, fmt, XTENSA_UNDEFINED);
  CHECK_SLOT (intisa, fmt, slot, XTENSA_UNDEFINED);

  slot_id = intisa->formats[fmt].slot_id[slot];
  return xtensa_opcode_lookup (isa, intisa->slots[slot_id].nop_name);
}
