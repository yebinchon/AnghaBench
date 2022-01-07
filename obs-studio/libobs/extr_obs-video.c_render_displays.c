
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct obs_display {struct obs_display* next; } ;
struct TYPE_5__ {int displays_mutex; struct obs_display* first_display; int valid; } ;
struct TYPE_4__ {int graphics; } ;
struct TYPE_6__ {TYPE_2__ data; TYPE_1__ video; } ;


 int gs_enter_context (int ) ;
 int gs_leave_context () ;
 TYPE_3__* obs ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int render_display (struct obs_display*) ;

__attribute__((used)) static inline void render_displays(void)
{
 struct obs_display *display;

 if (!obs->data.valid)
  return;

 gs_enter_context(obs->video.graphics);


 pthread_mutex_lock(&obs->data.displays_mutex);

 display = obs->data.first_display;
 while (display) {
  render_display(display);
  display = display->next;
 }

 pthread_mutex_unlock(&obs->data.displays_mutex);

 gs_leave_context();
}
