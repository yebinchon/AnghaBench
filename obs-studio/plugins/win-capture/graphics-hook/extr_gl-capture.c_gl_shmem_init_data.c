
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cy; int cx; int * textures; int * pbos; } ;


 int GL_BGRA ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_RGBA ;
 int GL_STREAM_READ ;
 int GL_TEXTURE_2D ;
 int GL_UNSIGNED_BYTE ;
 TYPE_1__ data ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glBufferData (int ,size_t,int ,int ) ;
 int glTexImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 scalar_t__ gl_error (char*,char*) ;

__attribute__((used)) static inline bool gl_shmem_init_data(size_t idx, size_t size)
{
 glBindBuffer(GL_PIXEL_PACK_BUFFER, data.pbos[idx]);
 if (gl_error("gl_shmem_init_data", "failed to bind pbo")) {
  return 0;
 }

 glBufferData(GL_PIXEL_PACK_BUFFER, size, 0, GL_STREAM_READ);
 if (gl_error("gl_shmem_init_data", "failed to set pbo data")) {
  return 0;
 }

 glBindTexture(GL_TEXTURE_2D, data.textures[idx]);
 if (gl_error("gl_shmem_init_data", "failed to set bind texture")) {
  return 0;
 }

 glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, data.cx, data.cy, 0, GL_BGRA,
       GL_UNSIGNED_BYTE, ((void*)0));
 if (gl_error("gl_shmem_init_data", "failed to set texture data")) {
  return 0;
 }

 return 1;
}
