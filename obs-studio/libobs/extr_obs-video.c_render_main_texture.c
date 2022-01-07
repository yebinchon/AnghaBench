
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vec4 {int dummy; } ;
struct obs_core_video {int texture_rendered; int base_height; int base_width; int render_texture; } ;
struct draw_callback {int param; int (* draw ) (int ,int ,int ) ;} ;
struct TYPE_4__ {size_t num; struct draw_callback* array; } ;
struct TYPE_5__ {int main_view; int draw_callbacks_mutex; TYPE_1__ draw_callbacks; } ;
struct TYPE_6__ {TYPE_2__ data; } ;


 int GS_CLEAR_COLOR ;
 int GS_DEBUG_COLOR_MAIN_TEXTURE ;
 int GS_DEBUG_MARKER_BEGIN (int ,int ) ;
 int GS_DEBUG_MARKER_END () ;
 int gs_clear (int ,struct vec4*,float,int ) ;
 int gs_set_render_target (int ,int *) ;
 TYPE_3__* obs ;
 int obs_view_render (int *) ;
 int profile_end (int ) ;
 int profile_start (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int render_main_texture_name ;
 int set_render_size (int ,int ) ;
 int stub1 (int ,int ,int ) ;
 int vec4_set (struct vec4*,float,float,float,float) ;

__attribute__((used)) static inline void render_main_texture(struct obs_core_video *video)
{
 profile_start(render_main_texture_name);
 GS_DEBUG_MARKER_BEGIN(GS_DEBUG_COLOR_MAIN_TEXTURE,
         render_main_texture_name);

 struct vec4 clear_color;
 vec4_set(&clear_color, 0.0f, 0.0f, 0.0f, 0.0f);

 gs_set_render_target(video->render_texture, ((void*)0));
 gs_clear(GS_CLEAR_COLOR, &clear_color, 1.0f, 0);

 set_render_size(video->base_width, video->base_height);

 pthread_mutex_lock(&obs->data.draw_callbacks_mutex);

 for (size_t i = obs->data.draw_callbacks.num; i > 0; i--) {
  struct draw_callback *callback;
  callback = obs->data.draw_callbacks.array + (i - 1);

  callback->draw(callback->param, video->base_width,
          video->base_height);
 }

 pthread_mutex_unlock(&obs->data.draw_callbacks_mutex);

 obs_view_render(&obs->data.main_view);

 video->texture_rendered = 1;

 GS_DEBUG_MARKER_END();
 profile_end(render_main_texture_name);
}
