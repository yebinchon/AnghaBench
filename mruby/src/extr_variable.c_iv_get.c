
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* key; struct TYPE_4__* next; int * val; } ;
typedef TYPE_1__ segment ;
typedef int mrb_value ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_state ;
typedef int mrb_bool ;
struct TYPE_5__ {size_t last_len; TYPE_1__* rootseg; } ;
typedef TYPE_2__ iv_tbl ;


 int FALSE ;
 size_t MRB_IV_SEGMENT_SIZE ;
 int TRUE ;

__attribute__((used)) static mrb_bool
iv_get(mrb_state *mrb, iv_tbl *t, mrb_sym sym, mrb_value *vp)
{
  segment *seg;
  size_t i;

  if (t == ((void*)0)) return FALSE;
  seg = t->rootseg;
  while (seg) {
    for (i=0; i<MRB_IV_SEGMENT_SIZE; i++) {
      mrb_sym key = seg->key[i];

      if (!seg->next && i >= t->last_len) {
        return FALSE;
      }
      if (key == sym) {
        if (vp) *vp = seg->val[i];
        return TRUE;
      }
    }
    seg = seg->next;
  }
  return FALSE;
}
