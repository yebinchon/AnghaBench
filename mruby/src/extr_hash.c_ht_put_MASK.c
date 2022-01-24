#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t size; TYPE_1__* e; struct TYPE_12__* next; } ;
typedef  TYPE_2__ segment ;
typedef  void* mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;
struct TYPE_13__ {size_t last_len; size_t size; int /*<<< orphan*/ * index; TYPE_2__* lastseg; TYPE_2__* rootseg; } ;
typedef  TYPE_3__ htable ;
struct TYPE_11__ {void* val; void* key; } ;

/* Variables and functions */
 size_t MRB_HT_INIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,void*,void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(mrb_state *mrb, htable *t, mrb_value key, mrb_value val)
{
  segment *seg;
  mrb_int i, deleted = 0;

  if (t == NULL) return;
  if (t->index) {
    FUNC3(mrb, t, key, val);
    return;
  }
  seg = t->rootseg;
  while (seg) {
    for (i=0; i<seg->size; i++) {
      mrb_value k = seg->e[i].key;
      /* Found room in last segment after last_len */
      if (!seg->next && i >= t->last_len) {
        seg->e[i].key = key;
        seg->e[i].val = val;
        t->last_len = i+1;
        t->size++;
        return;
      }
      if (FUNC4(k)) {
        deleted++;
        continue;
      }
      if (FUNC1(mrb, t, k, key)) {
        seg->e[i].val = val;
        return;
      }
    }
    seg = seg->next;
  }
  /* Not found */

  /* Compact if last segment has room */
  if (deleted > 0 && deleted > MRB_HT_INIT_SIZE) {
    FUNC0(mrb, t);
  }
  t->size++;

  /* check if thre's room after compaction */
  if (t->lastseg && t->last_len < t->lastseg->size) {
    seg = t->lastseg;
    i = t->last_len;
  }
  else {
    /* append new segment */
    seg = FUNC5(mrb, t->lastseg);
    i = 0;
    if (t->rootseg == NULL) {
      t->rootseg = seg;
    }
    else {
      t->lastseg->next = seg;
    }
    t->lastseg = seg;
  }
  seg->e[i].key = key;
  seg->e[i].val = val;
  t->last_len = i+1;
  if (t->index == NULL && t->size > MRB_HT_INIT_SIZE*4) {
    FUNC2(mrb, t);
  }
}