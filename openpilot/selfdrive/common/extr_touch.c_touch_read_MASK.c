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
struct input_event {int type; int value; int /*<<< orphan*/  code; } ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_3__ {int last_x; int last_y; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ TouchState ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
#define  EV_ABS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct input_event*,int) ; 

int FUNC2(TouchState *s, int* out_x, int* out_y) {
  FUNC0(out_x && out_y);
  struct input_event event;
  int err = FUNC1(s->fd, &event, sizeof(event));
  if (err < sizeof(event)) {
    return -1;
  }
  bool up = false;
  switch (event.type) {
  case EV_ABS:
    if (event.code == ABS_MT_POSITION_X) {
      s->last_x = event.value;
    } else if (event.code == ABS_MT_POSITION_Y) {
      s->last_y = event.value;
    }
    up = true;
    break;
  default:
    break;
  }
  if (up) {
    // adjust for flippening
    *out_x = s->last_y;
    *out_y = 1080 - s->last_x;
  }
  return up;
}