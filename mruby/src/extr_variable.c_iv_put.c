
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* key; struct TYPE_4__* next; void** val; } ;
typedef TYPE_1__ segment ;
typedef void* mrb_value ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_state ;
struct TYPE_5__ {size_t last_len; TYPE_1__* rootseg; int size; } ;
typedef TYPE_2__ iv_tbl ;


 size_t MRB_IV_SEGMENT_SIZE ;
 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static void
iv_put(mrb_state *mrb, iv_tbl *t, mrb_sym sym, mrb_value val)
{
  segment *seg;
  segment *prev = ((void*)0);
  segment *matched_seg = ((void*)0);
  size_t matched_idx = 0;
  size_t i;

  if (t == ((void*)0)) return;
  seg = t->rootseg;
  while (seg) {
    for (i=0; i<MRB_IV_SEGMENT_SIZE; i++) {
      mrb_sym key = seg->key[i];

      if (!seg->next && i >= t->last_len) {
        seg->key[i] = sym;
        seg->val[i] = val;
        t->last_len = i+1;
        t->size++;
        return;
      }
      if (!matched_seg && key == 0) {
        matched_seg = seg;
        matched_idx = i;
      }
      else if (key == sym) {
        seg->val[i] = val;
        return;
      }
    }
    prev = seg;
    seg = seg->next;
  }


  if (matched_seg) {
    matched_seg->key[matched_idx] = sym;
    matched_seg->val[matched_idx] = val;
    t->size++;
    return;
  }

  seg = (segment*)mrb_malloc(mrb, sizeof(segment));
  seg->next = ((void*)0);
  seg->key[0] = sym;
  seg->val[0] = val;
  t->last_len = 1;
  t->size++;
  if (prev) {
    prev->next = seg;
  }
  else {
    t->rootseg = seg;
  }
}
