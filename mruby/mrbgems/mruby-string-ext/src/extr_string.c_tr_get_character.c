
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start_pos; scalar_t__* ch; } ;
struct tr_pattern {scalar_t__ n; int type; struct tr_pattern* next; TYPE_1__ val; } ;
typedef scalar_t__ mrb_int ;






__attribute__((used)) static inline mrb_int
tr_get_character(const struct tr_pattern *pat, const char *pat_str, mrb_int n_th)
{
  mrb_int n_sum = 0;

  while (pat != ((void*)0)) {
    if (n_th < (n_sum + pat->n)) {
      mrb_int i = (n_th - n_sum);

      switch (pat->type) {
      case 130:
        return pat_str[pat->val.start_pos + i];
      case 129:
        return pat->val.ch[0]+i;
      case 128:
        return -1;
      }
    }
    if (pat->next == ((void*)0)) {
      switch (pat->type) {
      case 130:
        return pat_str[pat->val.start_pos + pat->n - 1];
      case 129:
        return pat->val.ch[1];
      case 128:
        return -1;
      }
    }
    n_sum += pat->n;
    pat = pat->next;
  }

  return -1;
}
