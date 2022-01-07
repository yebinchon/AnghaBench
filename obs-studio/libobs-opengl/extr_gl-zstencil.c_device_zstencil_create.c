
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_zstencil_buffer {int * device; int attachment; int format; } ;
typedef struct gs_zstencil_buffer gs_zstencil_t ;
typedef int gs_device_t ;
typedef enum gs_zstencil_format { ____Placeholder_gs_zstencil_format } gs_zstencil_format ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 struct gs_zstencil_buffer* bzalloc (int) ;
 int convert_zstencil_format (int) ;
 int get_attachment (int) ;
 int gl_init_zsbuffer (struct gs_zstencil_buffer*,int ,int ) ;
 int gs_zstencil_destroy (struct gs_zstencil_buffer*) ;

gs_zstencil_t *device_zstencil_create(gs_device_t *device, uint32_t width,
          uint32_t height,
          enum gs_zstencil_format format)
{
 struct gs_zstencil_buffer *zs;

 zs = bzalloc(sizeof(struct gs_zstencil_buffer));
 zs->format = convert_zstencil_format(format);
 zs->attachment = get_attachment(format);
 zs->device = device;

 if (!gl_init_zsbuffer(zs, width, height)) {
  blog(LOG_ERROR, "device_zstencil_create (GL) failed");
  gs_zstencil_destroy(zs);
  return ((void*)0);
 }

 return zs;
}
