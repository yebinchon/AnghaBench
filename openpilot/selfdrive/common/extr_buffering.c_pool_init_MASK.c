#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_bufs; int* refcnt; int* ts; int counter; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ Pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(Pool *s, int num_bufs) {
  FUNC0(num_bufs > 3);

  FUNC2(s, 0, sizeof(*s));
  s->num_bufs = num_bufs;

  s->refcnt = (int*)FUNC1(num_bufs, sizeof(int));
  s->ts = (int*)FUNC1(num_bufs, sizeof(int));

  s->counter = 1;

  FUNC3(&s->lock, NULL);
}