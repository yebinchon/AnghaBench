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
struct TYPE_3__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  ctx; int /*<<< orphan*/  buf_cl; scalar_t__ handle; } ;
typedef  TYPE_1__ VisionBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(const VisionBuf* buf) {
  if (buf->handle) {
    FUNC3(buf->addr);
  } else {
    int err = FUNC1(buf->buf_cl);
    FUNC0(err == 0);
#if __OPENCL_VERSION__ >= 200
    clSVMFree(buf->ctx, buf->addr);
#else
    FUNC3(buf->addr);
#endif
  }
}