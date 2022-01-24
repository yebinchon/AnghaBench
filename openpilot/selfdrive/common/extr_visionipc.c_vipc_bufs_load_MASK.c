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
struct TYPE_5__ {int /*<<< orphan*/  buf_len; } ;
typedef  TYPE_1__ VisionStreamBufs ;
struct TYPE_6__ {int fd; int /*<<< orphan*/ * addr; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ VIPCBuf ;

/* Variables and functions */
 int /*<<< orphan*/ * MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(VIPCBuf *bufs, const VisionStreamBufs *stream_bufs,
                     int num_fds, const int* fds) {
  for (int i=0; i<num_fds; i++) {
    if (bufs[i].addr) {
      FUNC3(bufs[i].addr, bufs[i].len);
      bufs[i].addr = NULL;
      FUNC1(bufs[i].fd);
    }
    bufs[i].fd = fds[i];
    bufs[i].len = stream_bufs->buf_len;
    bufs[i].addr = FUNC2(NULL, bufs[i].len,
                        PROT_READ | PROT_WRITE,
                        MAP_SHARED, bufs[i].fd, 0);
    // printf("b %d %zu -> %p\n", bufs[i].fd, bufs[i].len, bufs[i].addr);
    FUNC0(bufs[i].addr != MAP_FAILED);
  }
}