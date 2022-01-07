
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pollfd {int events; int revents; int fd; } ;
struct input_event {int type; int value; int code; } ;
typedef int event ;
struct TYPE_3__ {int last_x; int last_y; int fd; } ;
typedef TYPE_1__ TouchState ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TRACKING_ID ;

 int POLLIN ;
 int assert (int) ;
 int poll (struct pollfd*,int,int) ;
 int read (int ,struct input_event*,int) ;

int touch_poll(TouchState *s, int* out_x, int* out_y, int timeout) {
  assert(out_x && out_y);
  bool up = 0;
  while (1) {
    struct pollfd polls[] = {{
      .fd = s->fd,
      .events = POLLIN,
    }};
    int err = poll(polls, 1, timeout);
    if (err < 0) {
      return -1;
    }
    if (!(polls[0].revents & POLLIN)) {
      break;
    }

    struct input_event event;
    err = read(polls[0].fd, &event, sizeof(event));
    if (err < sizeof(event)) {
      return -1;
    }

    switch (event.type) {
    case 128:
      if (event.code == ABS_MT_POSITION_X) {
        s->last_x = event.value;
      } else if (event.code == ABS_MT_POSITION_Y) {
        s->last_y = event.value;
      } else if (event.code == ABS_MT_TRACKING_ID && event.value != -1) {
        up = 1;
      }
      break;
    default:
      break;
    }
  }
  if (up) {

    *out_x = s->last_y;
    *out_y = 1080 - s->last_x;
  }
  return up;
}
