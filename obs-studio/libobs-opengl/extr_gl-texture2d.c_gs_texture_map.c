
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int is_dynamic; } ;
struct gs_texture_2d {int width; int unpack_buffer; TYPE_1__ base; } ;
struct TYPE_6__ {int format; } ;
typedef TYPE_2__ gs_texture_t ;


 int GL_PIXEL_UNPACK_BUFFER ;
 int GL_WRITE_ONLY ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int * glMapBuffer (int ,int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_success (char*) ;
 int gs_get_format_bpp (int ) ;
 int is_texture_2d (TYPE_2__*,char*) ;

bool gs_texture_map(gs_texture_t *tex, uint8_t **ptr, uint32_t *linesize)
{
 struct gs_texture_2d *tex2d = (struct gs_texture_2d *)tex;

 if (!is_texture_2d(tex, "gs_texture_map"))
  goto fail;

 if (!tex2d->base.is_dynamic) {
  blog(LOG_ERROR, "Texture is not dynamic");
  goto fail;
 }

 if (!gl_bind_buffer(GL_PIXEL_UNPACK_BUFFER, tex2d->unpack_buffer))
  goto fail;

 *ptr = glMapBuffer(GL_PIXEL_UNPACK_BUFFER, GL_WRITE_ONLY);
 if (!gl_success("glMapBuffer"))
  goto fail;

 gl_bind_buffer(GL_PIXEL_UNPACK_BUFFER, 0);

 *linesize = tex2d->width * gs_get_format_bpp(tex->format) / 8;
 *linesize = (*linesize + 3) & 0xFFFFFFFC;
 return 1;

fail:
 blog(LOG_ERROR, "gs_texture_map (GL) failed");
 return 0;
}
