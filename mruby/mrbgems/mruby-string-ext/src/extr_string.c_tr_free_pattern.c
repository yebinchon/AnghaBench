
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_pattern {scalar_t__ flag_on_heap; struct tr_pattern* next; } ;
typedef int mrb_state ;


 int mrb_free (int *,struct tr_pattern*) ;

__attribute__((used)) static inline void
tr_free_pattern(mrb_state *mrb, struct tr_pattern *pat)
{
  while (pat) {
    struct tr_pattern *p = pat->next;
    if (pat->flag_on_heap) {
      mrb_free(mrb, pat);
    }
    pat = p;
  }
}
