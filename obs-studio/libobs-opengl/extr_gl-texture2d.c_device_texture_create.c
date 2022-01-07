
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int format; int levels; int is_dynamic; int is_render_target; int is_dummy; int gen_mipmaps; int gl_internal_format; int gl_format; int gl_type; int texture; int gl_target; int type; int * device; } ;
struct gs_texture_2d {int width; int height; TYPE_1__ base; } ;
typedef int gs_texture_t ;
typedef int gs_device_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAX_LEVEL ;
 int GS_BUILD_MIPMAPS ;
 int GS_DYNAMIC ;
 int GS_GL_DUMMYTEX ;
 int GS_RENDER_TARGET ;
 int GS_TEXTURE_2D ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 struct gs_texture_2d* bzalloc (int) ;
 int convert_gs_format (int) ;
 int convert_gs_internal_format (int) ;
 int create_pixel_unpack_buffer (struct gs_texture_2d*) ;
 int get_gl_format_type (int) ;
 int gl_bind_texture (int ,int ) ;
 int gl_gen_textures (int,int *) ;
 int gl_init_face (int ,int ,int,int ,int ,int,int,int,int,int *) ;
 int gl_tex_param_i (int ,int ,int ) ;
 int gs_get_format_bpp (int) ;
 int gs_is_compressed_format (int) ;
 int gs_texture_destroy (int *) ;
 int upload_texture_2d (struct gs_texture_2d*,int const**) ;

gs_texture_t *device_texture_create(gs_device_t *device, uint32_t width,
        uint32_t height,
        enum gs_color_format color_format,
        uint32_t levels, const uint8_t **data,
        uint32_t flags)
{
 struct gs_texture_2d *tex = bzalloc(sizeof(struct gs_texture_2d));
 tex->base.device = device;
 tex->base.type = GS_TEXTURE_2D;
 tex->base.format = color_format;
 tex->base.levels = levels;
 tex->base.gl_format = convert_gs_format(color_format);
 tex->base.gl_internal_format = convert_gs_internal_format(color_format);
 tex->base.gl_type = get_gl_format_type(color_format);
 tex->base.gl_target = GL_TEXTURE_2D;
 tex->base.is_dynamic = (flags & GS_DYNAMIC) != 0;
 tex->base.is_render_target = (flags & GS_RENDER_TARGET) != 0;
 tex->base.is_dummy = (flags & GS_GL_DUMMYTEX) != 0;
 tex->base.gen_mipmaps = (flags & GS_BUILD_MIPMAPS) != 0;
 tex->width = width;
 tex->height = height;

 if (!gl_gen_textures(1, &tex->base.texture))
  goto fail;

 if (!tex->base.is_dummy) {
  if (tex->base.is_dynamic && !create_pixel_unpack_buffer(tex))
   goto fail;
  if (!upload_texture_2d(tex, data))
   goto fail;
 } else {
  if (!gl_bind_texture(GL_TEXTURE_2D, tex->base.texture))
   goto fail;

  uint32_t row_size =
   tex->width * gs_get_format_bpp(tex->base.format);
  uint32_t tex_size = tex->height * row_size / 8;
  bool compressed = gs_is_compressed_format(tex->base.format);
  bool did_init = gl_init_face(GL_TEXTURE_2D, tex->base.gl_type,
          1, tex->base.gl_format,
          tex->base.gl_internal_format,
          compressed, tex->width,
          tex->height, tex_size, ((void*)0));
  did_init =
   gl_tex_param_i(GL_TEXTURE_2D, GL_TEXTURE_MAX_LEVEL, 0);

  bool did_unbind = gl_bind_texture(GL_TEXTURE_2D, 0);
  if (!did_init || !did_unbind)
   goto fail;
 }

 return (gs_texture_t *)tex;

fail:
 gs_texture_destroy((gs_texture_t *)tex);
 blog(LOG_ERROR, "device_texture_create (GL) failed");
 return ((void*)0);
}
