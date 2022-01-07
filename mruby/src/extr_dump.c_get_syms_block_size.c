
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int mrb_state ;
struct TYPE_3__ {int slen; scalar_t__* syms; } ;
typedef TYPE_1__ mrb_irep ;
typedef scalar_t__ mrb_int ;


 int mrb_sym_name_len (int *,scalar_t__,scalar_t__*) ;

__attribute__((used)) static size_t
get_syms_block_size(mrb_state *mrb, mrb_irep *irep)
{
  size_t size = 0;
  int sym_no;
  mrb_int len;

  size += sizeof(uint32_t);
  for (sym_no = 0; sym_no < irep->slen; sym_no++) {
    size += sizeof(uint16_t);
    if (irep->syms[sym_no] != 0) {
      mrb_sym_name_len(mrb, irep->syms[sym_no], &len);
      size += len + 1;
    }
  }

  return size;
}
