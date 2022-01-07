
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct segkv {int dummy; } ;
struct TYPE_11__ {size_t size; struct TYPE_11__* next; TYPE_1__* e; } ;
typedef TYPE_2__ segment ;
struct TYPE_12__ {scalar_t__ size; int capa; TYPE_1__** table; } ;
typedef TYPE_3__ segindex ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_13__ {scalar_t__ size; scalar_t__ last_len; TYPE_2__* rootseg; TYPE_3__* index; } ;
typedef TYPE_4__ htable ;
struct TYPE_10__ {int key; } ;


 size_t HT_MASK (TYPE_3__*) ;
 scalar_t__ UPPER_BOUND (int) ;
 size_t ht_hash_func (int *,TYPE_4__*,int ) ;
 int mrb_free (int *,TYPE_3__*) ;
 scalar_t__ mrb_realloc_simple (int *,TYPE_3__*,int) ;
 scalar_t__ mrb_undef_p (int ) ;
 int power2 (size_t) ;

__attribute__((used)) static void
ht_index(mrb_state *mrb, htable *t)
{
  size_t size = (size_t)t->size;
  size_t mask;
  segindex *index = t->index;
  segment *seg;
  size_t i;


  if (index && index->size >= UPPER_BOUND(index->capa)) {
    size = index->capa+1;
  }
  power2(size);
  if (!index || index->capa < size) {
    index = (segindex*)mrb_realloc_simple(mrb, index, sizeof(segindex)+sizeof(struct segkv*)*size);
    if (index == ((void*)0)) {
      mrb_free(mrb, t->index);
      t->index = ((void*)0);
      return;
    }
    t->index = index;
  }
  index->size = t->size;
  index->capa = size;
  for (i=0; i<size; i++) {
    index->table[i] = ((void*)0);
  }


  mask = HT_MASK(index);
  seg = t->rootseg;
  while (seg) {
    for (i=0; i<seg->size; i++) {
      mrb_value key;
      size_t k, step = 0;

      if (!seg->next && i >= (size_t)t->last_len) {
        return;
      }
      key = seg->e[i].key;
      if (mrb_undef_p(key)) continue;
      k = ht_hash_func(mrb, t, key) & mask;
      while (index->table[k]) {
        k = (k+(++step)) & mask;
      }
      index->table[k] = &seg->e[i];
    }
    seg = seg->next;
  }
}
