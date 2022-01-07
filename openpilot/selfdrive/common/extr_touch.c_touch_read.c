
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct input_event {int type; int value; int code; } ;
typedef int event ;
struct TYPE_3__ {int last_x; int last_y; int fd; } ;
typedef TYPE_1__ TouchState ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;

 int assert (int) ;
 int read (int ,struct input_event*,int) ;

int touch_read(TouchState *s, int* out_x, int* out_y) {
  assert(out_x && out_y);
  struct input_event event;
  int err = read(s->fd, &event, sizeof(event));
  if (err < sizeof(event)) {
    return -1;
  }
  bool up = 0;
  switch (event.type) {
  case 128:
    if (event.code == ABS_MT_POSITION_X) {
      s->last_x = event.value;
    } else if (event.code == ABS_MT_POSITION_Y) {
      s->last_y = event.value;
    }
    up = 1;
    break;
  default:
    break;
  }
  if (up) {

    *out_x = s->last_y;
    *out_y = 1080 - s->last_x;
  }
  return up;
}
