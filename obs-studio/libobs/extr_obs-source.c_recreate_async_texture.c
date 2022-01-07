
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * async_textures; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int GS_DYNAMIC ;
 int gs_texture_create (int ,int ,int,int,int *,int ) ;
 int gs_texture_destroy (int ) ;
 int gs_texture_get_height (int ) ;
 int gs_texture_get_width (int ) ;

__attribute__((used)) static void recreate_async_texture(obs_source_t *source,
       enum gs_color_format format)
{
 uint32_t cx = gs_texture_get_width(source->async_textures[0]);
 uint32_t cy = gs_texture_get_height(source->async_textures[0]);
 gs_texture_destroy(source->async_textures[0]);
 source->async_textures[0] =
  gs_texture_create(cx, cy, format, 1, ((void*)0), GS_DYNAMIC);
}
