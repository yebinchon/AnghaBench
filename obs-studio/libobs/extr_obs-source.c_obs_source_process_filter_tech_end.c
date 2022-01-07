
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int output_flags; } ;
struct TYPE_12__ {int filter_texrender; int allow_direct; TYPE_1__ info; } ;
typedef TYPE_2__ obs_source_t ;
typedef int gs_texture_t ;
typedef int gs_effect_t ;


 scalar_t__ can_bypass (TYPE_2__*,TYPE_2__*,int ,int ) ;
 int * gs_texrender_get_texture (int ) ;
 TYPE_2__* obs_filter_get_parent (TYPE_2__*) ;
 TYPE_2__* obs_filter_get_target (TYPE_2__*) ;
 int render_filter_bypass (TYPE_2__*,int *,char const*) ;
 int render_filter_tex (int *,int *,int ,int ,char const*) ;

void obs_source_process_filter_tech_end(obs_source_t *filter,
     gs_effect_t *effect, uint32_t width,
     uint32_t height, const char *tech_name)
{
 obs_source_t *target, *parent;
 gs_texture_t *texture;
 uint32_t parent_flags;

 if (!filter)
  return;

 target = obs_filter_get_target(filter);
 parent = obs_filter_get_parent(filter);

 if (!target || !parent)
  return;

 parent_flags = parent->info.output_flags;

 const char *tech = tech_name ? tech_name : "Draw";

 if (can_bypass(target, parent, parent_flags, filter->allow_direct)) {
  render_filter_bypass(target, effect, tech);
 } else {
  texture = gs_texrender_get_texture(filter->filter_texrender);
  if (texture) {
   render_filter_tex(texture, effect, width, height, tech);
  }
 }
}
