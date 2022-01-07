
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct game_capture {int pitch; int cy; int texture; int ** texture_buffers; scalar_t__ convert_16bit; int ** texture_mutexes; TYPE_1__* shmem_data; } ;
struct TYPE_2__ {int last_tex; } ;
typedef int * HANDLE ;


 int ReleaseMutex (int *) ;
 int copy_16bit_tex (struct game_capture*,int,int *,int) ;
 scalar_t__ gs_texture_map (int ,int **,int*) ;
 int gs_texture_unmap (int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ object_signalled (int *) ;

__attribute__((used)) static void copy_shmem_tex(struct game_capture *gc)
{
 int cur_texture;
 HANDLE mutex = ((void*)0);
 uint32_t pitch;
 int next_texture;
 uint8_t *data;

 if (!gc->shmem_data)
  return;

 cur_texture = gc->shmem_data->last_tex;

 if (cur_texture < 0 || cur_texture > 1)
  return;

 next_texture = cur_texture == 1 ? 0 : 1;

 if (object_signalled(gc->texture_mutexes[cur_texture])) {
  mutex = gc->texture_mutexes[cur_texture];

 } else if (object_signalled(gc->texture_mutexes[next_texture])) {
  mutex = gc->texture_mutexes[next_texture];
  cur_texture = next_texture;

 } else {
  return;
 }

 if (gs_texture_map(gc->texture, &data, &pitch)) {
  if (gc->convert_16bit) {
   copy_16bit_tex(gc, cur_texture, data, pitch);

  } else if (pitch == gc->pitch) {
   memcpy(data, gc->texture_buffers[cur_texture],
          pitch * gc->cy);
  } else {
   uint8_t *input = gc->texture_buffers[cur_texture];
   uint32_t best_pitch = pitch < gc->pitch ? pitch
        : gc->pitch;

   for (uint32_t y = 0; y < gc->cy; y++) {
    uint8_t *line_in = input + gc->pitch * y;
    uint8_t *line_out = data + pitch * y;
    memcpy(line_out, line_in, best_pitch);
   }
  }

  gs_texture_unmap(gc->texture);
 }

 ReleaseMutex(mutex);
}
