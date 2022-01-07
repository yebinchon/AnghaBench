
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; } ;
typedef TYPE_1__ TouchState ;


 int assert (int) ;
 scalar_t__ find_dev () ;

void touch_init(TouchState *s) {
  s->fd = find_dev();
  assert(s->fd >= 0);
}
