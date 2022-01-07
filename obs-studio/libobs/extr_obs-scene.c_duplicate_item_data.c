
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct obs_scene_item {int private_settings; scalar_t__ item_render; int update_transform; int crop; int toggle_visibility; int bounds; int bounds_align; int bounds_type; int draw_transform; int box_scale; int box_transform; int scale_filter; int output_scale; int last_height; int last_width; int align; int scale; int rot; int pos; int selected; int user_visible; struct obs_scene* parent; } ;
struct obs_scene {TYPE_2__* source; } ;
typedef int obs_data_array_t ;
struct TYPE_3__ {int private; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int GS_RGBA ;
 int GS_ZS_NONE ;
 scalar_t__ gs_texrender_create (int ,int ) ;
 scalar_t__ item_texture_enabled (struct obs_scene_item*) ;
 int obs_data_apply (int ,int ) ;
 int obs_data_array_release (int *) ;
 int obs_enter_graphics () ;
 int obs_hotkey_pair_load (int ,int *,int *) ;
 int obs_hotkey_pair_save (int ,int **,int **) ;
 int obs_leave_graphics () ;
 int obs_sceneitem_set_crop (struct obs_scene_item*,int *) ;
 int os_atomic_set_bool (int *,int) ;
 int set_visibility (struct obs_scene_item*,int) ;

__attribute__((used)) static inline void duplicate_item_data(struct obs_scene_item *dst,
           struct obs_scene_item *src,
           bool defer_texture_update,
           bool duplicate_hotkeys,
           bool duplicate_private_data)
{
 struct obs_scene *dst_scene = dst->parent;

 if (!src->user_visible)
  set_visibility(dst, 0);

 dst->selected = src->selected;
 dst->pos = src->pos;
 dst->rot = src->rot;
 dst->scale = src->scale;
 dst->align = src->align;
 dst->last_width = src->last_width;
 dst->last_height = src->last_height;
 dst->output_scale = src->output_scale;
 dst->scale_filter = src->scale_filter;
 dst->box_transform = src->box_transform;
 dst->box_scale = src->box_scale;
 dst->draw_transform = src->draw_transform;
 dst->bounds_type = src->bounds_type;
 dst->bounds_align = src->bounds_align;
 dst->bounds = src->bounds;

 if (duplicate_hotkeys && !dst_scene->source->context.private) {
  obs_data_array_t *data0 = ((void*)0);
  obs_data_array_t *data1 = ((void*)0);

  obs_hotkey_pair_save(src->toggle_visibility, &data0, &data1);
  obs_hotkey_pair_load(dst->toggle_visibility, data0, data1);

  obs_data_array_release(data0);
  obs_data_array_release(data1);
 }

 obs_sceneitem_set_crop(dst, &src->crop);

 if (defer_texture_update) {
  os_atomic_set_bool(&dst->update_transform, 1);
 } else {
  if (!dst->item_render && item_texture_enabled(dst)) {
   obs_enter_graphics();
   dst->item_render =
    gs_texrender_create(GS_RGBA, GS_ZS_NONE);
   obs_leave_graphics();
  }
 }

 if (duplicate_private_data) {
  obs_data_apply(dst->private_settings, src->private_settings);
 }
}
