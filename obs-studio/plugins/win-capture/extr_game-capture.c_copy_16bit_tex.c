
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct game_capture {TYPE_1__* global_hook_info; } ;
struct TYPE_2__ {scalar_t__ format; } ;


 scalar_t__ DXGI_FORMAT_B5G5R5A1_UNORM ;
 scalar_t__ DXGI_FORMAT_B5G6R5_UNORM ;
 int copy_b5g5r5a1_tex (struct game_capture*,int,int *,int ) ;
 int copy_b5g6r5_tex (struct game_capture*,int,int *,int ) ;

__attribute__((used)) static inline void copy_16bit_tex(struct game_capture *gc, int cur_texture,
      uint8_t *data, uint32_t pitch)
{
 if (gc->global_hook_info->format == DXGI_FORMAT_B5G5R5A1_UNORM) {
  copy_b5g5r5a1_tex(gc, cur_texture, data, pitch);

 } else if (gc->global_hook_info->format == DXGI_FORMAT_B5G6R5_UNORM) {
  copy_b5g6r5_tex(gc, cur_texture, data, pitch);
 }
}
