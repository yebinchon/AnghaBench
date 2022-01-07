
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; int * val; int * key; } ;
typedef TYPE_1__ segment ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;
struct TYPE_8__ {size_t last_len; TYPE_1__* rootseg; } ;
typedef TYPE_2__ iv_tbl ;


 size_t MRB_IV_SEGMENT_SIZE ;
 TYPE_2__* iv_new (int *) ;
 int iv_put (int *,TYPE_2__*,int ,int ) ;

__attribute__((used)) static iv_tbl*
iv_copy(mrb_state *mrb, iv_tbl *t)
{
  segment *seg;
  iv_tbl *t2;

  size_t i;

  seg = t->rootseg;
  t2 = iv_new(mrb);

  while (seg != ((void*)0)) {
    for (i=0; i<MRB_IV_SEGMENT_SIZE; i++) {
      mrb_sym key = seg->key[i];
      mrb_value val = seg->val[i];

      if ((seg->next == ((void*)0)) && (i >= t->last_len)) {
        return t2;
      }
      iv_put(mrb, t2, key, val);
    }
    seg = seg->next;
  }
  return t2;
}
