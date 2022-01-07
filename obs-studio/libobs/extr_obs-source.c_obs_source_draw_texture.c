
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source {scalar_t__ async_flip; scalar_t__ async_texrender; int ** async_textures; } ;
typedef int gs_texture_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int GS_FLIP_V ;
 int gs_draw_sprite (int *,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int gs_effect_set_texture (int *,int *) ;
 int * gs_texrender_get_texture (scalar_t__) ;

__attribute__((used)) static inline void obs_source_draw_texture(struct obs_source *source,
        gs_effect_t *effect)
{
 gs_texture_t *tex = source->async_textures[0];
 gs_eparam_t *param;

 if (source->async_texrender)
  tex = gs_texrender_get_texture(source->async_texrender);

 param = gs_effect_get_param_by_name(effect, "image");
 gs_effect_set_texture(param, tex);

 gs_draw_sprite(tex, source->async_flip ? GS_FLIP_V : 0, 0, 0);
}
