
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct fbo_info {scalar_t__ width; scalar_t__ height; scalar_t__ format; int * cur_zstencil_buffer; scalar_t__ cur_render_side; int * cur_render_target; int fbo; } ;
struct TYPE_3__ {scalar_t__ format; struct fbo_info* fbo; } ;
typedef TYPE_1__ gs_texture_t ;
typedef int GLuint ;


 struct fbo_info* bmalloc (int) ;
 int glGenFramebuffers (int,int *) ;
 int gl_success (char*) ;

struct fbo_info *get_fbo(gs_texture_t *tex, uint32_t width, uint32_t height)
{
 if (tex->fbo && tex->fbo->width == width &&
     tex->fbo->height == height && tex->fbo->format == tex->format)
  return tex->fbo;

 GLuint fbo;
 glGenFramebuffers(1, &fbo);
 if (!gl_success("glGenFramebuffers"))
  return ((void*)0);

 tex->fbo = bmalloc(sizeof(struct fbo_info));
 tex->fbo->fbo = fbo;
 tex->fbo->width = width;
 tex->fbo->height = height;
 tex->fbo->format = tex->format;
 tex->fbo->cur_render_target = ((void*)0);
 tex->fbo->cur_render_side = 0;
 tex->fbo->cur_zstencil_buffer = ((void*)0);

 return tex->fbo;
}
