
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* format_decode_fn ) (int const) ;} ;
typedef TYPE_1__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int xtensa_insnbuf ;
typedef scalar_t__ xtensa_format ;


 scalar_t__ XTENSA_UNDEFINED ;
 int strcpy (int ,char*) ;
 scalar_t__ stub1 (int const) ;
 int xtensa_isa_bad_format ;
 int xtisa_errno ;
 int xtisa_error_msg ;

xtensa_format
xtensa_format_decode (xtensa_isa isa, const xtensa_insnbuf insn)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_format fmt;

  fmt = (intisa->format_decode_fn) (insn);
  if (fmt != XTENSA_UNDEFINED) {
   return fmt;
  }

  xtisa_errno = xtensa_isa_bad_format;
  strcpy (xtisa_error_msg, "cannot decode instruction format");
  return XTENSA_UNDEFINED;
}
