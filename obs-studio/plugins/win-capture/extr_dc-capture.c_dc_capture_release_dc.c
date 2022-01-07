
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_capture {int width; int texture; int bits; scalar_t__ compatibility; } ;


 int gs_texture_release_dc (int ) ;
 int gs_texture_set_image (int ,int ,int,int) ;

__attribute__((used)) static inline void dc_capture_release_dc(struct dc_capture *capture)
{
 if (capture->compatibility) {
  gs_texture_set_image(capture->texture, capture->bits,
         capture->width * 4, 0);
 } else {
  gs_texture_release_dc(capture->texture);
 }
}
