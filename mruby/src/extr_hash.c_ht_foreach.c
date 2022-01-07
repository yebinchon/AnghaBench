
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t size; struct TYPE_6__* next; TYPE_1__* e; } ;
typedef TYPE_2__ segment ;
typedef int mrb_state ;
typedef size_t mrb_int ;
typedef scalar_t__ (* mrb_hash_foreach_func ) (int *,int ,int ,void*) ;
struct TYPE_7__ {size_t last_len; TYPE_2__* rootseg; } ;
typedef TYPE_3__ htable ;
struct TYPE_5__ {int val; int key; } ;


 scalar_t__ mrb_undef_p (int ) ;
 scalar_t__ stub1 (int *,int ,int ,void*) ;

__attribute__((used)) static void
ht_foreach(mrb_state *mrb, htable *t, mrb_hash_foreach_func *func, void *p)
{
  segment *seg;
  mrb_int i;

  if (t == ((void*)0)) return;
  seg = t->rootseg;
  while (seg) {
    for (i=0; i<seg->size; i++) {

      if (!seg->next && i >= t->last_len) {
        return;
      }
      if (mrb_undef_p(seg->e[i].key)) continue;
      if ((*func)(mrb, seg->e[i].key, seg->e[i].val, p) != 0)
        return;
    }
    seg = seg->next;
  }
}
