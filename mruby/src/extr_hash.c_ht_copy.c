
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t size; struct TYPE_9__* next; TYPE_1__* e; } ;
typedef TYPE_2__ segment ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
struct TYPE_10__ {scalar_t__ size; size_t last_len; TYPE_2__* rootseg; } ;
typedef TYPE_3__ htable ;
struct TYPE_8__ {int val; int key; } ;


 TYPE_3__* ht_new (int *) ;
 int ht_put (int *,TYPE_3__*,int ,int ) ;
 scalar_t__ mrb_undef_p (int ) ;

__attribute__((used)) static htable*
ht_copy(mrb_state *mrb, htable *t)
{
  segment *seg;
  htable *t2;
  mrb_int i;

  seg = t->rootseg;
  t2 = ht_new(mrb);
  if (t->size == 0) return t2;

  while (seg) {
    for (i=0; i<seg->size; i++) {
      mrb_value key = seg->e[i].key;
      mrb_value val = seg->e[i].val;

      if ((seg->next == ((void*)0)) && (i >= t->last_len)) {
        return t2;
      }
      if (mrb_undef_p(key)) continue;
      ht_put(mrb, t2, key, val);
    }
    seg = seg->next;
  }
  return t2;
}
