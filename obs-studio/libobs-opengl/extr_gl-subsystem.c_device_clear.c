
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vec4 {int w; int z; int y; int x; } ;
typedef int gs_device_t ;
typedef int GLbitfield ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_STENCIL_BUFFER_BIT ;
 int GS_CLEAR_COLOR ;
 int GS_CLEAR_DEPTH ;
 int GS_CLEAR_STENCIL ;
 int LOG_ERROR ;
 int UNUSED_PARAMETER (int *) ;
 int blog (int ,char*) ;
 int glClear (int ) ;
 int glClearColor (int ,int ,int ,int ) ;
 int glClearDepth (float) ;
 int glClearStencil (int ) ;
 int gl_success (char*) ;

void device_clear(gs_device_t *device, uint32_t clear_flags,
    const struct vec4 *color, float depth, uint8_t stencil)
{
 GLbitfield gl_flags = 0;

 if (clear_flags & GS_CLEAR_COLOR) {
  glClearColor(color->x, color->y, color->z, color->w);
  gl_flags |= GL_COLOR_BUFFER_BIT;
 }

 if (clear_flags & GS_CLEAR_DEPTH) {
  glClearDepth(depth);
  gl_flags |= GL_DEPTH_BUFFER_BIT;
 }

 if (clear_flags & GS_CLEAR_STENCIL) {
  glClearStencil(stencil);
  gl_flags |= GL_STENCIL_BUFFER_BIT;
 }

 glClear(gl_flags);
 if (!gl_success("glClear"))
  blog(LOG_ERROR, "device_clear (GL) failed");

 UNUSED_PARAMETER(device);
}
