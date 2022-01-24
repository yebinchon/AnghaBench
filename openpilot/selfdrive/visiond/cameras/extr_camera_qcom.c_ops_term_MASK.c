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
typedef  int /*<<< orphan*/  zsock_t ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_3__ {int type; } ;
typedef  TYPE_1__ CameraMsg ;

/* Variables and functions */
 int /*<<< orphan*/  ZMQ_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5() {
  zsock_t *ops_sock = FUNC3(">inproc://cameraops");
  FUNC0(ops_sock);

  CameraMsg msg = {.type = -1};
  FUNC1(FUNC4(ops_sock), &msg, sizeof(msg), ZMQ_DONTWAIT);

  FUNC2(&ops_sock);
}