
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct game_capture {int copy_texture; int texture; int cy; int cx; TYPE_2__* global_hook_info; scalar_t__ convert_16bit; TYPE_1__* shmem_data; scalar_t__ data; int ** texture_buffers; } ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;
struct TYPE_4__ {int format; } ;
struct TYPE_3__ {int tex1_offset; int tex2_offset; } ;


 int GS_BGRA ;
 int GS_DYNAMIC ;
 int convert_format (int ) ;
 int copy_shmem_tex ;
 int gs_texture_create (int ,int ,int,int,int *,int ) ;
 int gs_texture_destroy (int ) ;
 scalar_t__ is_16bit_format (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int warn (char*) ;

__attribute__((used)) static inline bool init_shmem_capture(struct game_capture *gc)
{
 enum gs_color_format format;

 gc->texture_buffers[0] =
  (uint8_t *)gc->data + gc->shmem_data->tex1_offset;
 gc->texture_buffers[1] =
  (uint8_t *)gc->data + gc->shmem_data->tex2_offset;

 gc->convert_16bit = is_16bit_format(gc->global_hook_info->format);
 format = gc->convert_16bit
    ? GS_BGRA
    : convert_format(gc->global_hook_info->format);

 obs_enter_graphics();
 gs_texture_destroy(gc->texture);
 gc->texture =
  gs_texture_create(gc->cx, gc->cy, format, 1, ((void*)0), GS_DYNAMIC);
 obs_leave_graphics();

 if (!gc->texture) {
  warn("init_shmem_capture: failed to create texture");
  return 0;
 }

 gc->copy_texture = copy_shmem_tex;
 return 1;
}
