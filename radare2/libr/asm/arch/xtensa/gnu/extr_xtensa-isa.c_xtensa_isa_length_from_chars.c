
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* length_decode_fn ) (unsigned char const*) ;} ;
typedef TYPE_1__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;


 int stub1 (unsigned char const*) ;

int
xtensa_isa_length_from_chars (xtensa_isa isa, const unsigned char *cp)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  return (intisa->length_decode_fn) (cp);
}
