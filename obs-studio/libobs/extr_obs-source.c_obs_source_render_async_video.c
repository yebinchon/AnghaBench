
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ async_active; scalar_t__* async_textures; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_draw_async_texture (TYPE_1__*) ;

__attribute__((used)) static inline void obs_source_render_async_video(obs_source_t *source)
{
 if (source->async_textures[0] && source->async_active)
  obs_source_draw_async_texture(source);
}
