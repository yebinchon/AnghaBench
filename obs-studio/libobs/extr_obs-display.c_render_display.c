
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {size_t num; struct draw_callback* array; } ;
struct obs_display {int size_changed; int draw_callbacks_mutex; TYPE_1__ draw_callbacks; int draw_info_mutex; int cy; int cx; int enabled; } ;
struct draw_callback {int param; int (* draw ) (int ,int ,int ) ;} ;


 int GS_DEBUG_COLOR_DISPLAY ;
 int GS_DEBUG_MARKER_BEGIN (int ,char*) ;
 int GS_DEBUG_MARKER_END () ;
 int gs_present () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int render_display_begin (struct obs_display*,int ,int ,int) ;
 int render_display_end () ;
 int stub1 (int ,int ,int ) ;

void render_display(struct obs_display *display)
{
 uint32_t cx, cy;
 bool size_changed;

 if (!display || !display->enabled)
  return;

 GS_DEBUG_MARKER_BEGIN(GS_DEBUG_COLOR_DISPLAY, "obs_display");



 pthread_mutex_lock(&display->draw_info_mutex);

 cx = display->cx;
 cy = display->cy;
 size_changed = display->size_changed;

 if (size_changed)
  display->size_changed = 0;

 pthread_mutex_unlock(&display->draw_info_mutex);



 render_display_begin(display, cx, cy, size_changed);

 pthread_mutex_lock(&display->draw_callbacks_mutex);

 for (size_t i = 0; i < display->draw_callbacks.num; i++) {
  struct draw_callback *callback;
  callback = display->draw_callbacks.array + i;

  callback->draw(callback->param, cx, cy);
 }

 pthread_mutex_unlock(&display->draw_callbacks_mutex);

 render_display_end();

 GS_DEBUG_MARKER_END();

 gs_present();
}
