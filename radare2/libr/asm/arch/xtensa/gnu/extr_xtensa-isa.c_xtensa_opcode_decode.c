
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ xtensa_opcode ;
struct TYPE_8__ {TYPE_2__* slots; TYPE_1__* formats; } ;
typedef TYPE_3__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int xtensa_insnbuf ;
typedef size_t xtensa_format ;
struct TYPE_7__ {scalar_t__ (* opcode_decode_fn ) (int const) ;} ;
struct TYPE_6__ {int* slot_id; } ;


 int CHECK_FORMAT (TYPE_3__*,size_t,scalar_t__) ;
 int CHECK_SLOT (TYPE_3__*,size_t,int,scalar_t__) ;
 scalar_t__ XTENSA_UNDEFINED ;
 int strcpy (int ,char*) ;
 scalar_t__ stub1 (int const) ;
 int xtensa_isa_bad_opcode ;
 int xtisa_errno ;
 int xtisa_error_msg ;

xtensa_opcode
xtensa_opcode_decode (xtensa_isa isa, xtensa_format fmt, int slot,
        const xtensa_insnbuf slotbuf)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int slot_id;
  xtensa_opcode opc;

  CHECK_FORMAT (intisa, fmt, XTENSA_UNDEFINED);
  CHECK_SLOT (intisa, fmt, slot, XTENSA_UNDEFINED);

  slot_id = intisa->formats[fmt].slot_id[slot];

  opc = (intisa->slots[slot_id].opcode_decode_fn) (slotbuf);
  if (opc != XTENSA_UNDEFINED) {
   return opc;
  }

  xtisa_errno = xtensa_isa_bad_opcode;
  strcpy (xtisa_error_msg, "cannot decode opcode");
  return XTENSA_UNDEFINED;
}
