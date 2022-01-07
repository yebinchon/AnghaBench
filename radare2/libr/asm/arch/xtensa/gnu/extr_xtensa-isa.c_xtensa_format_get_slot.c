
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* slots; TYPE_1__* formats; } ;
typedef TYPE_3__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int xtensa_insnbuf ;
typedef size_t xtensa_format ;
struct TYPE_7__ {int (* get_fn ) (int const,int ) ;} ;
struct TYPE_6__ {int* slot_id; } ;


 int CHECK_FORMAT (TYPE_3__*,size_t,int) ;
 int CHECK_SLOT (TYPE_3__*,size_t,int,int) ;
 int stub1 (int const,int ) ;

int
xtensa_format_get_slot (xtensa_isa isa, xtensa_format fmt, int slot,
   const xtensa_insnbuf insn, xtensa_insnbuf slotbuf)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int slot_id;

  CHECK_FORMAT (intisa, fmt, -1);
  CHECK_SLOT (intisa, fmt, slot, -1);

  slot_id = intisa->formats[fmt].slot_id[slot];
  (*intisa->slots[slot_id].get_fn) (insn, slotbuf);
  return 0;
}
