#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t head; size_t tail; int* idx; int num; int num_bufs; int /*<<< orphan*/  lock; int /*<<< orphan*/  efd; scalar_t__ stopped; int /*<<< orphan*/  cv; } ;
typedef  TYPE_1__ PoolQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(PoolQueue *c) {
  FUNC3(&c->lock);

  if (c->stopped) {
    FUNC4(&c->lock);
    return -1;
  }

  while (c->head == c->tail) {
    FUNC2(&c->cv, &c->lock);

    if (c->stopped) {
      FUNC4(&c->lock);
      return -1;
    }
  }

  // printf("pop head %d tail %d\n", s->head, s->tail);

  FUNC0(c->head != c->tail);

  int r = c->idx[c->tail];
  c->idx[c->tail] = -1;
  c->tail = (c->tail+1) % c->num;

  // queue event is level triggered
  if (c->head == c->tail) {
    FUNC1(c->efd);
  }

  // printf("pop %d head %d tail %d\n", r, s->head, s->tail);

  FUNC0(r >= 0 && r < c->num_bufs);

  FUNC4(&c->lock);

  return r;
}