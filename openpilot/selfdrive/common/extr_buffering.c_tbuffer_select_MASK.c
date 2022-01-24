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
struct TYPE_3__ {int num_bufs; int pending_idx; int /*<<< orphan*/  lock; int /*<<< orphan*/ * reading; } ;
typedef  TYPE_1__ TBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(TBuffer *tb) {
  FUNC1(&tb->lock);

  int i;
  for (i=0; i<tb->num_bufs; i++) {
    if (!tb->reading[i] && i != tb->pending_idx) {
      break;
    }
  }
  FUNC0(i < tb->num_bufs);

  FUNC2(&tb->lock);
  return i;
}