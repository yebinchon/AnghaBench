
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;


 int GL_BGRA ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_TEXTURE_2D ;
 int GL_UNSIGNED_BYTE ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glGetTexImage (int ,int ,int ,int ,int ) ;
 scalar_t__ gl_error (char*,char*) ;

__attribute__((used)) static inline void gl_shmem_capture_stage(GLuint dst_pbo, GLuint src_tex)
{
 glBindTexture(GL_TEXTURE_2D, src_tex);
 if (gl_error("gl_shmem_capture_stage", "failed to bind src_tex")) {
  return;
 }

 glBindBuffer(GL_PIXEL_PACK_BUFFER, dst_pbo);
 if (gl_error("gl_shmem_capture_stage", "failed to bind dst_pbo")) {
  return;
 }

 glGetTexImage(GL_TEXTURE_2D, 0, GL_BGRA, GL_UNSIGNED_BYTE, 0);
 if (gl_error("gl_shmem_capture_stage", "failed to read src_tex")) {
  return;
 }
}
