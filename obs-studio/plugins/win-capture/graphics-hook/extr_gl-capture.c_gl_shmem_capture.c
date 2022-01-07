
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_tex; int copy_wait; int* texture_mapped; int* texture_ready; int * pbos; int * textures; } ;
typedef int GLuint ;
typedef int GLint ;


 int GL_DRAW_FRAMEBUFFER ;
 int GL_DRAW_FRAMEBUFFER_BINDING ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_BINDING_2D ;
 int NUM_BUFFERS ;
 TYPE_1__ data ;
 int glBindFramebuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glGetIntegerv (int ,int *) ;
 int glUnmapBuffer (int ) ;
 int gl_copy_backbuffer (int ) ;
 scalar_t__ gl_error (char*,char*) ;
 int gl_shmem_capture_queue_copy () ;
 int gl_shmem_capture_stage (int ,int ) ;
 scalar_t__ shmem_texture_data_lock (int) ;
 int shmem_texture_data_unlock (int) ;

__attribute__((used)) static void gl_shmem_capture(void)
{
 int next_tex;
 GLint last_fbo;
 GLint last_tex;

 glGetIntegerv(GL_DRAW_FRAMEBUFFER_BINDING, &last_fbo);
 if (gl_error("gl_shmem_capture", "failed to get last fbo")) {
  return;
 }

 glGetIntegerv(GL_TEXTURE_BINDING_2D, &last_tex);
 if (gl_error("gl_shmem_capture", "failed to get last texture")) {
  return;
 }

 gl_shmem_capture_queue_copy();

 next_tex = (data.cur_tex == NUM_BUFFERS - 1) ? 0 : data.cur_tex + 1;

 gl_copy_backbuffer(data.textures[next_tex]);

 if (data.copy_wait < NUM_BUFFERS - 1) {
  data.copy_wait++;
 } else {
  GLuint src = data.textures[next_tex];
  GLuint dst = data.pbos[next_tex];

  if (shmem_texture_data_lock(next_tex)) {
   glUnmapBuffer(GL_PIXEL_PACK_BUFFER);
   data.texture_mapped[next_tex] = 0;
   shmem_texture_data_unlock(next_tex);
  }

  gl_shmem_capture_stage(dst, src);
  data.texture_ready[next_tex] = 1;
 }

 glBindTexture(GL_TEXTURE_2D, last_tex);
 glBindFramebuffer(GL_DRAW_FRAMEBUFFER, last_fbo);
}
