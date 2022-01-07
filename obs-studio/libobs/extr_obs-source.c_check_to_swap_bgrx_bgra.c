
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct obs_source_frame {scalar_t__ format; } ;
struct TYPE_4__ {int * async_textures; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int GS_BGRA ;
 int GS_BGRX ;
 scalar_t__ VIDEO_FORMAT_BGRA ;
 scalar_t__ VIDEO_FORMAT_BGRX ;
 int gs_texture_get_color_format (int ) ;
 int recreate_async_texture (TYPE_1__*,int) ;

__attribute__((used)) static inline void check_to_swap_bgrx_bgra(obs_source_t *source,
        struct obs_source_frame *frame)
{
 enum gs_color_format format =
  gs_texture_get_color_format(source->async_textures[0]);
 if (format == GS_BGRX && frame->format == VIDEO_FORMAT_BGRA) {
  recreate_async_texture(source, GS_BGRA);
 } else if (format == GS_BGRA && frame->format == VIDEO_FORMAT_BGRX) {
  recreate_async_texture(source, GS_BGRX);
 }
}
