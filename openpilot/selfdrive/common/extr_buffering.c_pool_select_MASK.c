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
struct TYPE_3__ {int num_bufs; scalar_t__* refcnt; int* ts; int counter; int /*<<< orphan*/  lock; int /*<<< orphan*/  cb_cookie; int /*<<< orphan*/  (* release_cb ) (int /*<<< orphan*/ ,int) ;} ;
typedef  TYPE_1__ Pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(Pool *s) {
  FUNC1(&s->lock);

  int i;
  for (i=0; i<s->num_bufs; i++) {
    if (s->refcnt[i] == 0) {
      break;
    }
  }

  if (i >= s->num_bufs) {
    // overwrite the oldest
    // still being using in a queue or tbuffer :/

    int min_k = 0;
    int min_ts = s->ts[0];
    for (int k=1; k<s->num_bufs; k++) {
      if (s->ts[k] < min_ts) {
        min_ts = s->ts[k];
        min_k = k;
      }
    }
    i = min_k;
    FUNC0("pool is full! evicted %d\n", min_k);

    // might be really bad if the user is doing pointery stuff
    if (s->release_cb) {
      s->release_cb(s->cb_cookie, min_k);
    }
  }

  s->refcnt[i]++;

  s->ts[i] = s->counter;
  s->counter++;

  FUNC2(&s->lock);

  return i;
}