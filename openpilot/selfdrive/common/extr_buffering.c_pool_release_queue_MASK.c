#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int num; int* idx; int inited; int /*<<< orphan*/  cv; int /*<<< orphan*/  lock; int /*<<< orphan*/  efd; TYPE_2__* pool; } ;
typedef  TYPE_1__ PoolQueue ;
typedef  TYPE_2__ Pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(PoolQueue *c) {
  Pool *s = c->pool;

  FUNC5(&s->lock);
  FUNC5(&c->lock);

  for (int i=0; i<c->num; i++) {
    if (c->idx[i] != -1) {
      FUNC2(s, c->idx[i]);
    }
  }

  FUNC0(c->efd);
  FUNC1(c->idx);

  c->inited = false;

  FUNC6(&c->lock);

  FUNC4(&c->lock);
  FUNC3(&c->cv);

  FUNC6(&s->lock);
}