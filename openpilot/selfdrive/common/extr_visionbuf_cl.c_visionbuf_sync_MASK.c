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
struct TYPE_3__ {int /*<<< orphan*/  copy_q; int /*<<< orphan*/  addr; int /*<<< orphan*/  len; int /*<<< orphan*/  buf_cl; } ;
typedef  TYPE_1__ VisionBuf ;

/* Variables and functions */
 int /*<<< orphan*/  CL_FALSE ; 
 int VISIONBUF_SYNC_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(const VisionBuf* buf, int dir) {
  int err = 0;
  if (!buf->buf_cl) return;

#if __OPENCL_VERSION__ < 200
  if (dir == VISIONBUF_SYNC_FROM_DEVICE) {
    err = FUNC1(buf->copy_q, buf->buf_cl, CL_FALSE, 0, buf->len, buf->addr, 0, NULL, NULL);
  } else {
    err = FUNC2(buf->copy_q, buf->buf_cl, CL_FALSE, 0, buf->len, buf->addr, 0, NULL, NULL);
  }
  FUNC0(err == 0);
  FUNC3(buf->copy_q);
#endif
}