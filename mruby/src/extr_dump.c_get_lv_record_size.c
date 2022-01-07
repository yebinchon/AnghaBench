
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int mrb_state ;
struct TYPE_3__ {int nlocals; int rlen; struct TYPE_3__** reps; } ;
typedef TYPE_1__ mrb_irep ;



__attribute__((used)) static size_t
get_lv_record_size(mrb_state *mrb, mrb_irep *irep)
{
  size_t ret = 0;
  int i;

  ret += (sizeof(uint16_t) + sizeof(uint16_t)) * (irep->nlocals - 1);

  for (i = 0; i < irep->rlen; ++i) {
    ret += get_lv_record_size(mrb, irep->reps[i]);
  }

  return ret;
}
