
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct obs_display {struct obs_display* next; struct obs_display** prev_next; int background_color; } ;
struct gs_init_data {int dummy; } ;
typedef struct obs_display obs_display_t ;
struct TYPE_5__ {int displays_mutex; struct obs_display* first_display; } ;
struct TYPE_4__ {int graphics; } ;
struct TYPE_6__ {TYPE_2__ data; TYPE_1__ video; } ;


 struct obs_display* bzalloc (int) ;
 int gs_enter_context (int ) ;
 int gs_leave_context () ;
 TYPE_3__* obs ;
 int obs_display_destroy (struct obs_display*) ;
 int obs_display_init (struct obs_display*,struct gs_init_data const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

obs_display_t *obs_display_create(const struct gs_init_data *graphics_data,
      uint32_t background_color)
{
 struct obs_display *display = bzalloc(sizeof(struct obs_display));

 gs_enter_context(obs->video.graphics);

 display->background_color = background_color;

 if (!obs_display_init(display, graphics_data)) {
  obs_display_destroy(display);
  display = ((void*)0);
 } else {
  pthread_mutex_lock(&obs->data.displays_mutex);
  display->prev_next = &obs->data.first_display;
  display->next = obs->data.first_display;
  obs->data.first_display = display;
  if (display->next)
   display->next->prev_next = &display->next;
  pthread_mutex_unlock(&obs->data.displays_mutex);
 }

 gs_leave_context();

 return display;
}
