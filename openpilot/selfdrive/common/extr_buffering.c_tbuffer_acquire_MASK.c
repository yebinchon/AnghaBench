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
struct TYPE_3__ {int pending_idx; int num_bufs; int* reading; int /*<<< orphan*/  lock; int /*<<< orphan*/  efd; scalar_t__ stopped; int /*<<< orphan*/  cv; } ;
typedef  TYPE_1__ TBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(TBuffer *tb) {
  FUNC3(&tb->lock);

  if (tb->stopped) {
    FUNC4(&tb->lock);
    return -1;
  }

  while (tb->pending_idx == -1) {
    FUNC2(&tb->cv, &tb->lock);

    if (tb->stopped) {
      FUNC4(&tb->lock);
      return -1;
    }
  }

  FUNC1(tb->efd);

  int ret = tb->pending_idx;
  FUNC0(ret < tb->num_bufs);

  tb->reading[ret] = true;
  tb->pending_idx = -1;

  FUNC4(&tb->lock);

  return ret;
}