
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int cx; int cy; int textures; int pbos; } ;
typedef int GLint ;


 int GL_PIXEL_PACK_BUFFER ;
 int GL_PIXEL_PACK_BUFFER_BINDING ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_BINDING_2D ;
 size_t NUM_BUFFERS ;
 TYPE_1__ data ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glGenBuffers (size_t,int ) ;
 int glGenTextures (size_t,int ) ;
 int glGetIntegerv (int ,int *) ;
 scalar_t__ gl_error (char*,char*) ;
 int gl_shmem_init_data (size_t,int) ;

__attribute__((used)) static inline bool gl_shmem_init_buffers(void)
{
 uint32_t size = data.cx * data.cy * 4;
 GLint last_pbo;
 GLint last_tex;

 glGenBuffers(NUM_BUFFERS, data.pbos);
 if (gl_error("gl_shmem_init_buffers", "failed to generate buffers")) {
  return 0;
 }

 glGenTextures(NUM_BUFFERS, data.textures);
 if (gl_error("gl_shmem_init_buffers", "failed to generate textures")) {
  return 0;
 }

 glGetIntegerv(GL_PIXEL_PACK_BUFFER_BINDING, &last_pbo);
 if (gl_error("gl_shmem_init_buffers",
       "failed to save pixel pack buffer")) {
  return 0;
 }

 glGetIntegerv(GL_TEXTURE_BINDING_2D, &last_tex);
 if (gl_error("gl_shmem_init_buffers", "failed to save texture")) {
  return 0;
 }

 for (size_t i = 0; i < NUM_BUFFERS; i++) {
  if (!gl_shmem_init_data(i, size)) {
   return 0;
  }
 }

 glBindBuffer(GL_PIXEL_PACK_BUFFER, last_pbo);
 glBindTexture(GL_TEXTURE_2D, last_tex);
 return 1;
}
