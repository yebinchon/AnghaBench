
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t size; struct TYPE_8__* next; TYPE_1__* e; } ;
typedef TYPE_2__ segment ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
typedef int mrb_bool ;
struct TYPE_9__ {size_t last_len; TYPE_2__* rootseg; scalar_t__ index; } ;
typedef TYPE_3__ htable ;
struct TYPE_7__ {int val; int key; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ht_hash_equal (int *,TYPE_3__*,int ,int ) ;
 int ht_index_get (int *,TYPE_3__*,int ,int *) ;
 scalar_t__ mrb_undef_p (int ) ;

__attribute__((used)) static mrb_bool
ht_get(mrb_state *mrb, htable *t, mrb_value key, mrb_value *vp)
{
  segment *seg;
  mrb_int i;

  if (t == ((void*)0)) return FALSE;
  if (t->index) {
    return ht_index_get(mrb, t, key, vp);
  }

  seg = t->rootseg;
  while (seg) {
    for (i=0; i<seg->size; i++) {
      mrb_value k = seg->e[i].key;

      if (!seg->next && i >= t->last_len) {
        return FALSE;
      }
      if (mrb_undef_p(k)) continue;
      if (ht_hash_equal(mrb, t, k, key)) {
        if (vp) *vp = seg->e[i].val;
        return TRUE;
      }
    }
    seg = seg->next;
  }
  return FALSE;
}
