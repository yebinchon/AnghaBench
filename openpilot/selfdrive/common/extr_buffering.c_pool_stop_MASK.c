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
struct TYPE_5__ {int num_tbufs; int stopped; int /*<<< orphan*/  lock; TYPE_1__* queues; int /*<<< orphan*/ * tbufs; } ;
struct TYPE_4__ {int stopped; int /*<<< orphan*/  cv; int /*<<< orphan*/  efd; int /*<<< orphan*/  lock; int /*<<< orphan*/  inited; } ;
typedef  TYPE_1__ PoolQueue ;
typedef  TYPE_2__ Pool ;

/* Variables and functions */
 int POOL_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(Pool *s) {
  for (int i=0; i<s->num_tbufs; i++) {
    FUNC4(&s->tbufs[i]);
  }

  FUNC2(&s->lock);
  s->stopped = true;
  for (int i=0; i<POOL_MAX_QUEUES; i++) {
    PoolQueue *c = &s->queues[i];
    if (!c->inited) continue;

    FUNC2(&c->lock);
    c->stopped = true;
    FUNC3(&c->lock);
    FUNC0(c->efd);
    FUNC1(&c->cv);
  }
  FUNC3(&s->lock);
}