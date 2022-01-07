
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct gs_stage_surface {int format; int bytes_per_pixel; int gl_type; int gl_internal_format; int gl_format; void* height; void* width; int * device; } ;
typedef struct gs_stage_surface gs_stagesurf_t ;
typedef int gs_device_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 struct gs_stage_surface* bzalloc (int) ;
 int convert_gs_format (int) ;
 int convert_gs_internal_format (int) ;
 int create_pixel_pack_buffer (struct gs_stage_surface*) ;
 int get_gl_format_type (int) ;
 int gs_get_format_bpp (int) ;
 int gs_stagesurface_destroy (struct gs_stage_surface*) ;

gs_stagesurf_t *device_stagesurface_create(gs_device_t *device, uint32_t width,
        uint32_t height,
        enum gs_color_format color_format)
{
 struct gs_stage_surface *surf;
 surf = bzalloc(sizeof(struct gs_stage_surface));
 surf->device = device;
 surf->format = color_format;
 surf->width = width;
 surf->height = height;
 surf->gl_format = convert_gs_format(color_format);
 surf->gl_internal_format = convert_gs_internal_format(color_format);
 surf->gl_type = get_gl_format_type(color_format);
 surf->bytes_per_pixel = gs_get_format_bpp(color_format) / 8;

 if (!create_pixel_pack_buffer(surf)) {
  blog(LOG_ERROR, "device_stagesurface_create (GL) failed");
  gs_stagesurface_destroy(surf);
  return ((void*)0);
 }

 return surf;
}
