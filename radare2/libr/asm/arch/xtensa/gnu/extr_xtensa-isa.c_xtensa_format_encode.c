
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* formats; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int xtensa_insnbuf ;
typedef size_t xtensa_format ;
struct TYPE_4__ {int (* encode_fn ) (int ) ;} ;


 int CHECK_FORMAT (TYPE_2__*,size_t,int) ;
 int stub1 (int ) ;

int
xtensa_format_encode (xtensa_isa isa, xtensa_format fmt, xtensa_insnbuf insn)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  CHECK_FORMAT (intisa, fmt, -1);
  (*intisa->formats[fmt].encode_fn) (insn);
  return 0;
}
