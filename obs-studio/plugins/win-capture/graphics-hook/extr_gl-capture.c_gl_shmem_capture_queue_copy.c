
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* texture_ready; int* texture_mapped; int * pbos; } ;
typedef int GLvoid ;


 int GL_PIXEL_PACK_BUFFER ;
 int GL_READ_ONLY ;
 int NUM_BUFFERS ;
 TYPE_1__ data ;
 int glBindBuffer (int ,int ) ;
 int * glMapBuffer (int ,int ) ;
 scalar_t__ gl_error (char*,char*) ;
 int shmem_copy_data (int,int *) ;

__attribute__((used)) static inline void gl_shmem_capture_queue_copy(void)
{
 for (int i = 0; i < NUM_BUFFERS; i++) {
  if (data.texture_ready[i]) {
   GLvoid *buffer;

   data.texture_ready[i] = 0;

   glBindBuffer(GL_PIXEL_PACK_BUFFER, data.pbos[i]);
   if (gl_error("gl_shmem_capture_queue_copy",
         "failed to bind pbo")) {
    return;
   }

   buffer =
    glMapBuffer(GL_PIXEL_PACK_BUFFER, GL_READ_ONLY);
   if (buffer) {
    data.texture_mapped[i] = 1;
    shmem_copy_data(i, buffer);
   }
   break;
  }
 }
}
