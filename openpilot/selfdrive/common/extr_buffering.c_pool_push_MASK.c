#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_bufs; scalar_t__* refcnt; int num_tbufs; int /*<<< orphan*/ * tbufs; int /*<<< orphan*/  lock; TYPE_1__* queues; int /*<<< orphan*/  counter; int /*<<< orphan*/ * ts; } ;
struct TYPE_4__ {int head; int num; int tail; int* idx; int /*<<< orphan*/  cv; int /*<<< orphan*/  efd; int /*<<< orphan*/  lock; int /*<<< orphan*/  inited; } ;
typedef  TYPE_1__ PoolQueue ;
typedef  TYPE_2__ Pool ;

/* Variables and functions */
 int POOL_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(Pool *s, int idx) {
  FUNC3(&s->lock);

  // printf("push %d head %d tail %d\n", idx, s->head, s->tail);

  FUNC0(idx >= 0 && idx < s->num_bufs);

  s->ts[idx] = s->counter;
  s->counter++;

  FUNC0(s->refcnt[idx] > 0);
  s->refcnt[idx]--; //push is a implcit release

  int num_tbufs = s->num_tbufs;
  s->refcnt[idx] += num_tbufs;

  // dispatch pool queues
  for (int i=0; i<POOL_MAX_QUEUES; i++) {
    PoolQueue *c = &s->queues[i];
    if (!c->inited) continue;
    
    FUNC3(&c->lock);
    if (((c->head+1) % c->num) == c->tail) {
      // queue is full. skip for now
      FUNC4(&c->lock);
      continue;
    }

    s->refcnt[idx]++;

    c->idx[c->head] = idx;
    c->head = (c->head+1) % c->num;
    FUNC0(c->head != c->tail);
    FUNC4(&c->lock);

    FUNC1(c->efd);
    FUNC2(&c->cv);
  }

  FUNC4(&s->lock);

  for (int i=0; i<num_tbufs; i++) {
    FUNC5(&s->tbufs[i], idx);
  }
}