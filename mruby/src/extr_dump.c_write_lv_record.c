
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int mrb_sym ;
typedef int mrb_state ;
struct TYPE_5__ {int nlocals; int rlen; struct TYPE_5__** reps; TYPE_1__* lv; } ;
typedef TYPE_2__ mrb_irep ;
struct TYPE_4__ {scalar_t__ name; int const r; } ;


 int MRB_DUMP_OK ;
 int const RITE_LV_NULL_MARK ;
 int find_filename_index (int const*,int ,scalar_t__) ;
 int mrb_assert (int) ;
 int uint16_to_bin (int const,int *) ;

__attribute__((used)) static int
write_lv_record(mrb_state *mrb, const mrb_irep *irep, uint8_t **start, mrb_sym const *syms, uint32_t syms_len)
{
  uint8_t *cur = *start;
  int i;

  for (i = 0; i + 1 < irep->nlocals; ++i) {
    if (irep->lv[i].name == 0) {
      cur += uint16_to_bin(RITE_LV_NULL_MARK, cur);
      cur += uint16_to_bin(0, cur);
    }
    else {
      int const sym_idx = find_filename_index(syms, syms_len, irep->lv[i].name);
      mrb_assert(sym_idx != -1);

      cur += uint16_to_bin(sym_idx, cur);
      cur += uint16_to_bin(irep->lv[i].r, cur);
    }
  }

  for (i = 0; i < irep->rlen; ++i) {
    write_lv_record(mrb, irep->reps[i], &cur, syms, syms_len);
  }

  *start = cur;

  return MRB_DUMP_OK;
}
