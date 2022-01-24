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
struct TYPE_3__ {int num_bufs; int /*<<< orphan*/  lock; int /*<<< orphan*/ * refcnt; } ;
typedef  TYPE_1__ Pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(Pool *s, int idx) {
  FUNC1(&s->lock);

  FUNC0(idx >= 0 && idx < s->num_bufs);

  s->refcnt[idx]++;

  FUNC2(&s->lock);
}