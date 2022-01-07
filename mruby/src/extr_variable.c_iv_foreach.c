
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* key; struct TYPE_4__* next; int * val; } ;
typedef TYPE_1__ segment ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_state ;
typedef scalar_t__ (* mrb_iv_foreach_func ) (int *,scalar_t__,int ,void*) ;
struct TYPE_5__ {size_t last_len; TYPE_1__* rootseg; } ;
typedef TYPE_2__ iv_tbl ;


 size_t MRB_IV_SEGMENT_SIZE ;
 scalar_t__ stub1 (int *,scalar_t__,int ,void*) ;

__attribute__((used)) static void
iv_foreach(mrb_state *mrb, iv_tbl *t, mrb_iv_foreach_func *func, void *p)
{
  segment *seg;
  size_t i;

  if (t == ((void*)0)) return;
  seg = t->rootseg;
  while (seg) {
    for (i=0; i<MRB_IV_SEGMENT_SIZE; i++) {
      mrb_sym key = seg->key[i];


      if (!seg->next && i >= t->last_len) {
        return;
      }
      if (key != 0) {
        if ((*func)(mrb, key, seg->val[i], p) != 0) {
          return;
        }
      }
    }
    seg = seg->next;
  }
  return;
}
