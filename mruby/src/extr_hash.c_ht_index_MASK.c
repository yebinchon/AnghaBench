#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct segkv {int dummy; } ;
struct TYPE_11__ {size_t size; struct TYPE_11__* next; TYPE_1__* e; } ;
typedef  TYPE_2__ segment ;
struct TYPE_12__ {scalar_t__ size; int capa; TYPE_1__** table; } ;
typedef  TYPE_3__ segindex ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_13__ {scalar_t__ size; scalar_t__ last_len; TYPE_2__* rootseg; TYPE_3__* index; } ;
typedef  TYPE_4__ htable ;
struct TYPE_10__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 

__attribute__((used)) static void
FUNC7(mrb_state *mrb, htable *t)
{
  size_t size = (size_t)t->size;
  size_t mask;
  segindex *index = t->index;
  segment *seg;
  size_t i;

  /* allocate index table */
  if (index && index->size >= FUNC1(index->capa)) {
    size = index->capa+1;
  }
  FUNC6(size);
  if (!index || index->capa < size) {
    index = (segindex*)FUNC4(mrb, index, sizeof(segindex)+sizeof(struct segkv*)*size);
    if (index == NULL) {
      FUNC3(mrb, t->index);
      t->index = NULL;
      return;
    }
    t->index = index;
  }
  index->size = t->size;
  index->capa = size;
  for (i=0; i<size; i++) {
    index->table[i] = NULL;
  }

  /* rebuld index */
  mask = FUNC0(index);
  seg = t->rootseg;
  while (seg) {
    for (i=0; i<seg->size; i++) {
      mrb_value key;
      size_t k, step = 0;

      if (!seg->next && i >= (size_t)t->last_len) {
        return;
      }
      key = seg->e[i].key;
      if (FUNC5(key)) continue;
      k = FUNC2(mrb, t, key) & mask;
      while (index->table[k]) {
        k = (k+(++step)) & mask;
      }
      index->table[k] = &seg->e[i];
    }
    seg = seg->next;
  }
}