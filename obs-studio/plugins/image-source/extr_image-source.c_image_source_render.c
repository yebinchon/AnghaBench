
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cy; int cx; int texture; } ;
struct TYPE_3__ {TYPE_2__ image; } ;
struct image_source {TYPE_1__ if2; } ;
typedef int gs_effect_t ;


 int gs_draw_sprite (int ,int ,int ,int ) ;
 int gs_effect_get_param_by_name (int *,char*) ;
 int gs_effect_set_texture (int ,int ) ;

__attribute__((used)) static void image_source_render(void *data, gs_effect_t *effect)
{
 struct image_source *context = data;

 if (!context->if2.image.texture)
  return;

 gs_effect_set_texture(gs_effect_get_param_by_name(effect, "image"),
         context->if2.image.texture);
 gs_draw_sprite(context->if2.image.texture, 0, context->if2.image.cx,
         context->if2.image.cy);
}
