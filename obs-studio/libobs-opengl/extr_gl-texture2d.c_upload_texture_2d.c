
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int levels; int gl_internal_format; int gl_format; int gl_type; int texture; int format; } ;
struct gs_texture_2d {int width; int height; TYPE_1__ base; } ;


 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAX_LEVEL ;
 int gl_bind_texture (int ,int ) ;
 int gl_init_face (int ,int ,int,int ,int ,int,int,int,int,int const***) ;
 int gl_tex_param_i (int ,int ,int) ;
 int gs_get_format_bpp (int ) ;
 int gs_get_total_levels (int,int) ;
 int gs_is_compressed_format (int ) ;

__attribute__((used)) static bool upload_texture_2d(struct gs_texture_2d *tex, const uint8_t **data)
{
 uint32_t row_size = tex->width * gs_get_format_bpp(tex->base.format);
 uint32_t tex_size = tex->height * row_size / 8;
 uint32_t num_levels = tex->base.levels;
 bool compressed = gs_is_compressed_format(tex->base.format);
 bool success;

 if (!num_levels)
  num_levels = gs_get_total_levels(tex->width, tex->height);

 if (!gl_bind_texture(GL_TEXTURE_2D, tex->base.texture))
  return 0;

 success = gl_init_face(GL_TEXTURE_2D, tex->base.gl_type, num_levels,
          tex->base.gl_format,
          tex->base.gl_internal_format, compressed,
          tex->width, tex->height, tex_size, &data);

 if (!gl_tex_param_i(GL_TEXTURE_2D, GL_TEXTURE_MAX_LEVEL,
       num_levels - 1))
  success = 0;
 if (!gl_bind_texture(GL_TEXTURE_2D, 0))
  success = 0;

 return success;
}
