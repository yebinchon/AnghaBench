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
typedef  int /*<<< orphan*/  msg ;
struct TYPE_6__ {float grey_frac; int /*<<< orphan*/  camera_num; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  ops_sock; int /*<<< orphan*/  camera_num; } ;
typedef  TYPE_1__ CameraState ;
typedef  TYPE_2__ CameraMsg ;

/* Variables and functions */
 int /*<<< orphan*/  CAMERA_MSG_AUTOEXPOSE ; 
 int /*<<< orphan*/  ZMQ_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ) ; 

void FUNC1(CameraState *s, float grey_frac) {
  CameraMsg msg = {
    .type = CAMERA_MSG_AUTOEXPOSE,
    .camera_num = s->camera_num,
    .grey_frac = grey_frac,
  };

  FUNC0(s->ops_sock, &msg, sizeof(msg), ZMQ_DONTWAIT);
}