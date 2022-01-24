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
typedef  int /*<<< orphan*/  p ;
struct TYPE_5__ {int /*<<< orphan*/  d; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ VisionPacketWire ;
struct TYPE_6__ {int /*<<< orphan*/  d; int /*<<< orphan*/  type; int /*<<< orphan*/  num_fds; scalar_t__ fds; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ VisionPacket ;

/* Variables and functions */
 int /*<<< orphan*/  VIPC_MAX_FDS ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int,TYPE_1__*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(int fd, VisionPacket *out_p) {
  VisionPacketWire p = {0};
  VisionPacket p2 = {0};
  int ret = FUNC0(false, fd, &p, sizeof(p), (int*)p2.fds, VIPC_MAX_FDS, &p2.num_fds);
  if (ret < 0) {
    FUNC1("vipc_recv err: %s\n", FUNC2(errno));
  } else {
    p2.type = p.type;
    p2.d = p.d;
    *out_p = p2;
  }
  return ret;
}